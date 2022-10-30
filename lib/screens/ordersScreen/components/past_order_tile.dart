import 'dart:ui';

import 'package:canteen_system/components/custom_app_bar.dart';
import 'package:canteen_system/components/custom_button.dart';
import 'package:canteen_system/components/custom_navigation_bar.dart';
import 'package:canteen_system/components/loading_bar.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/enums.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/models/Cart.dart';
import 'package:canteen_system/models/Orders.dart';
import 'package:canteen_system/models/Products.dart';
import 'package:canteen_system/providers/order_provider.dart';
import 'package:canteen_system/screens/ordersScreen/components/order_summary.dart';
import 'package:canteen_system/screens/statusScreen/status_screen.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/src/consumer.dart';

class PastOrderTile extends StatelessWidget {
  const PastOrderTile({
    Key? key,
    required this.order,
  }) : super(key: key);

  final Orders order;

  @override
  Widget build(BuildContext context) {
    double total = 0;

    for (CartItem cartItem in order.cartItems) {
      if (cartItem.product.isCustomisable) {
        total += cartItem.product.prices[cartItem.choosenCustomisation] *
            cartItem.quantity;
      } else {
        total += cartItem.product.mrp * cartItem.quantity;
      }
    }
    return Container(
      margin: EdgeInsets.only(bottom: getProportionateScreenHeight(10)),
      height: getProportionateScreenHeight(130),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kPrimaryLightColor,
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: getProportionateScreenHeight(130),
              width: getProportionateScreenWidth(100),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage("assets/images/spaceChef.png"),
                    fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(10),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      order.orderId,
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(2),
                    ),
                    Text(
                      "Quantity : ${order.cartItems.length}",
                      style: kSubHeadingTextStyle,
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(2),
                    ),
                    Text(DateFormat('yyyy-MM-dd – kk:mm')
                        .format(order.dateTime)),
                    SizedBox(
                      height: getProportionateScreenHeight(5),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("\u{20B9} $total"),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  SizedBox(
                      height: getProportionateScreenHeight(50),
                      width: getProportionateScreenWidth(60),
                      child: SizedBox(
                          width: double.infinity,
                          height: getProportionateScreenHeight(56),
                          child: TextButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        kSecondaryColor),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                )),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => OrderSummary(
                                      orders: order,
                                      total: total,
                                    ),
                                  ));
                            },
                            child: Text(
                              "View",
                              style: TextStyle(
                                  fontSize: getProportionateScreenWidth(15),
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          )))
                ],
              ),
            )
          ]),
    );
  }
}
