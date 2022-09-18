import 'package:canteen_system/components/custom_app_bar.dart';
import 'package:canteen_system/components/custom_navigation_bar.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/models/Cart.dart';
import 'package:canteen_system/screens/OrderSummary/Components/bill_details.dart';
import 'package:canteen_system/screens/OrderSummary/Components/order_details.dart';
import 'package:canteen_system/screens/OrderSummary/Components/order_tile.dart';
import 'package:canteen_system/screens/cartScreen/components/cart_tile.dart';
import 'package:canteen_system/screens/cartScreen/components/place_order_card.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../../components/custom_button.dart';

class Order_Summary extends StatelessWidget {
  const Order_Summary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: customAppBar("Order"),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: Padding(
        padding: EdgeInsets.only(
          top: getProportionateScreenHeight(15.0),
          left: getProportionateScreenWidth(20.0),
          right: getProportionateScreenWidth(20.0),
          bottom: getProportionateScreenHeight(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Center(
              child: Container(
                width: getProportionateScreenWidth(400),
                height: getProportionateScreenHeight(500),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kSecondaryColor,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: getProportionateScreenHeight(10.0),
                    bottom: getProportionateScreenHeight(10.0),
                    left: getProportionateScreenWidth(15.0),
                    right: getProportionateScreenWidth(15.0),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('1 item in this order',
                            textAlign: TextAlign.center,
                            style: kHeadingTextStyle),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        OrderTile(),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        OrderTile(),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        OrderTile(),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        BillDetails(),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        OrderDetails(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            CustomButton(
              press: () {},
              text: "Repeat Order",
            ),
          ],
        ),
      ),
    );
  }
}
