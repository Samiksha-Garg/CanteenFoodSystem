import 'package:canteen_system/helper/enums.dart';
import 'package:canteen_system/models/Cart.dart';

class Orders {
  final String orderId;
  final List<CartItem> cartItems;
  final PaymentState paymentStatus;
  final String razorpayId;
  final ModeOfPayment paymentMethod;
  final String signature;
  final DateTime dateTime;
  final bool validated;

  Orders(
      {required this.orderId,
      required this.cartItems,
      required this.paymentStatus,
      required this.razorpayId,
      required this.paymentMethod,
      required this.signature,
      required this.dateTime,
      required this.validated});

  Map<String, dynamic> toMap() {
    List<Map<String, dynamic>> list = [];

    for (var item in cartItems) {
      list.add(item.toMapforOrder());
    }
    return {
      'orderId': orderId,
      'cartItems': list,
      'paymentStatus': paymentStatus.name,
      'razorpayId': razorpayId,
      'paymentMethod': paymentMethod.name,
      'signature': signature,
      'dateTime': dateTime,
      'validated': validated
    };
  }

  factory Orders.fromMap(Map<String, dynamic> map) {
    List<CartItem> list = [];
    for (var x in map['cartItems']) {
      list.add(CartItem.fromMapfromOrder(x));
    }

    PaymentState paymentState =
        PaymentState.values.firstWhere((e) => e.name == map['paymentStatus']);
    ModeOfPayment modeOfPayment =
        ModeOfPayment.values.firstWhere((e) => e.name == map['paymentMethod']);
    return Orders(
        orderId: map['orderId'],
        cartItems: list,
        paymentStatus: paymentState,
        razorpayId: map['razorpayId'],
        paymentMethod: modeOfPayment,
        signature: map['signature'],
        dateTime: map['dateTime'].toDate(),
        validated: map['validated']);
  }
}
