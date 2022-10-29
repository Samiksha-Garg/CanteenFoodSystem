import 'package:canteen_system/helper/enums.dart';
import 'package:canteen_system/models/Cart.dart';
import 'package:canteen_system/models/Orders.dart';
import 'package:canteen_system/models/User.dart';
import 'package:canteen_system/providers/cart_provider.dart';
import 'package:canteen_system/providers/order_provider.dart';
import 'package:canteen_system/providers/user_account.dart';
import 'package:canteen_system/screens/OrderSummary/success_screen.dart';
import 'package:canteen_system/screens/failureScreen/failure_screen.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/src/provider.dart';

class PlaceOrder with ChangeNotifier {
  late BuildContext _context;
  final _firestore = FirebaseFirestore.instance;
  final _razorpay = Razorpay();
  bool paymentInitiated = false;
  late UserModel _user;
  late String _orderId;

  Map<dynamic, dynamic> getMethods(ModeOfPayment modeOfPayment) {
    if (modeOfPayment == ModeOfPayment.Card) {
      var options = {
        "hide": [
          {"method": "emi"},
          {"method": "wallet"},
          {"method": "paylater"},
          {"method": "upi"},
          {"method": "netbanking"}
        ],
        "preferences": {
          "show_default_blocks": "true",
        },
      };
      return options;
    }

    if (modeOfPayment == ModeOfPayment.Netbanking) {
      var options = {
        "hide": [
          {"method": "emi"},
          {"method": "wallet"},
          {"method": "paylater"},
          {"method": "upi"},
          {"method": "card"}
        ],
        "preferences": {
          "show_default_blocks": "true",
        },
      };
      return options;
    }

    if (modeOfPayment == ModeOfPayment.UPI) {
      var options = {
        "hide": [
          {"method": "emi"},
          {"method": "wallet"},
          {"method": "paylater"},
          {"method": "card"},
          {"method": "netbanking"}
        ],
        "preferences": {
          "show_default_blocks": "true",
        },
      };
      return options;
    }

    if (modeOfPayment == ModeOfPayment.Wallets) {
      var options = {
        "hide": [
          {"method": "emi"},
          {"method": "netbanking"},
          {"method": "paylater"},
          {"method": "upi"},
          {"method": "card"}
        ],
        "preferences": {
          "show_default_blocks": "true",
        },
      };
      return options;
    }

    return {};
  }

  Future<void> makePayment(ModeOfPayment modeOfPayment) async {
    paymentInitiated = true;
    notifyListeners();

    _user = Provider.of<UserProvider>(_context, listen: false).user;
    _orderId = _user.id + DateTime.now().toString();

    List<CartItem> cartItems =
        Provider.of<CartProvider>(_context, listen: false)
            .items
            .values
            .toList();

    double totalCost = 0;
    Map<dynamic, dynamic> options = getMethods(modeOfPayment);

    for (var cartItem in cartItems) {
      if (cartItem.product.isCustomisable) {
        totalCost += cartItem.product.prices[cartItem.choosenCustomisation];
      } else {
        totalCost += cartItem.product.mrp;
      }
    }

    var razorpayOptions = {
      'key': 'rzp_test_S9Ux6EudFbcRZu',
      'amount': totalCost * 100,
      'name': 'Space Canteen',
      'theme': {'color': '#302E3B', 'hide_topbar': true},
      'description': '',
      "config": {"display": options}
    };

    try {
      _razorpay.open(razorpayOptions);
    } catch (e) {
      print(e);
    }

    await Provider.of<OrderProvider>(_context, listen: false).addOrder(
        _orderId,
        Provider.of<CartProvider>(_context, listen: false)
            .items
            .values
            .toList(),
        modeOfPayment,
        _user.id);
    paymentInitiated = false;
    notifyListeners();
  }

  void init(BuildContext context) {
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    _context = context;
  }

  Future<void> _handlePaymentSuccess(PaymentSuccessResponse response) async {
    // Navigator.pushNamed(_context, SuccessPayment.routeName, arguments: {
    //     "totalAmount": _subscriptionModel.amount.toString(),
    //     "transactionNumber": response.paymentId,
    //     "OrderId": _subscriptionModel.subId,
    //   });
    Navigator.push(
        _context, MaterialPageRoute(builder: (context) => SuccessScreen()));
    print("Success");

    await Provider.of<OrderProvider>(_context, listen: false)
        .updateOrderStatus(_orderId, _user.id, PaymentState.Success);
    await Provider.of<CartProvider>(_context, listen: false)
        .clearCart(_user.id);
  }

  Future<void> _handlePaymentError(PaymentFailureResponse response) async {
    print("Error");
    Navigator.push(
        _context, MaterialPageRoute(builder: (context) => FailureScreen()));
    await Provider.of<OrderProvider>(_context, listen: false)
        .updateOrderStatus(_orderId, _user.id, PaymentState.Error);
  }

  Future<void> _handleExternalWallet(ExternalWalletResponse response) async {
    print("Failure");
    Navigator.push(
        _context, MaterialPageRoute(builder: (context) => FailureScreen()));
    await Provider.of<OrderProvider>(_context, listen: false)
        .updateOrderStatus(_orderId, _user.id, PaymentState.Failed);
  }

  void clearPayment() {
    _razorpay.clear();
  }
}
