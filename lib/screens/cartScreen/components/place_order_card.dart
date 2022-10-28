import 'package:canteen_system/components/custom_button.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/models/Cart.dart';
import 'package:canteen_system/providers/cart_provider.dart';
import 'package:canteen_system/screens/payment/payment.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:provider/src/consumer.dart';

class PlaceOrderCard extends StatelessWidget {
  const PlaceOrderCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(builder: (context, cartProvider, _) {
      double totalAmount = 0;
      List<CartItem> cartItems = cartProvider.items.values.toList();
      for (int i = 0; i < cartItems.length; i++) {
        CartItem cartItem = cartItems[i];
        if (cartItem.product.isCustomisable) {
          totalAmount +=
              (cartItem.product.prices[cartItem.choosenCustomisation] *
                  cartItem.quantity);
        } else {
          totalAmount += cartItem.product.mrp * cartItem.quantity;
        }
      }
      return cartProvider.items.isNotEmpty
          ? Container(
              padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenWidth(15),
                horizontal: getProportionateScreenWidth(30),
              ),
              decoration: const BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Amount : ', style: kHeadingTextStyle),
                    Text(
                      '\u{20B9} $totalAmount',
                      style: kHeadingTextStyle,
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                    press: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Payment()));
                    },
                    text: "Place Order",
                  ),
                )
              ]),
            )
          : Container();
    });
  }
}
