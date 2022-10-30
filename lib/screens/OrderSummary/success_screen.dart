import 'package:canteen_system/components/custom_app_bar.dart';
import 'package:canteen_system/components/custom_navigation_bar.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/enums.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/models/Cart.dart';
import 'package:canteen_system/screens/OrderSummary/Components/bill_details.dart';
import 'package:canteen_system/screens/OrderSummary/Components/order_details.dart';
import 'package:canteen_system/screens/OrderSummary/Components/order_tile.dart';
import 'package:canteen_system/screens/cartScreen/components/cart_tile.dart';
import 'package:canteen_system/screens/cartScreen/components/place_order_card.dart';
import 'package:canteen_system/screens/landingScreen/landing_home_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../../components/custom_button.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {Key? key,
      required this.cartItems,
      required this.total,
      required this.oId,
      required this.dateTime,
      required this.modeOfPayment})
      : super(key: key);

  final List<CartItem> cartItems;
  final double total;
  final String oId;
  final ModeOfPayment modeOfPayment;
  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(
          const Duration(seconds: 10),
          () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => LandingHomeScreen(),
                ),
                (Route<dynamic> route) => false);
          },
        ),
        builder: (context, snapshot) {
          return WillPopScope(
            onWillPop: () async => false,
            child: Scaffold(
              // bottomNavigationBar: const CustomBottomNavBar(),
              appBar: AppBar(
                // leading: Padding(
                //   padding: const EdgeInsets.only(left: 8),
                //   child: IconButton(
                //     icon: Icon(Icons.arrow_back,
                //         color: kTextColor, size: getProportionateScreenWidth(30)),
                //     onPressed: () {
                //       Navigator.pop(context);
                //     },
                //   ),
                // ),
                title: Center(
                  child: Text(
                    "Order Summary",
                    style: kAppBarTextStyle,
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: IconButton(
                      icon: Icon(Icons.notifications_outlined,
                          color: kTextColor,
                          size: getProportionateScreenWidth(30)),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              body: Padding(
                padding: EdgeInsets.only(
                  top: getProportionateScreenHeight(15.0),
                  left: getProportionateScreenWidth(20.0),
                  right: getProportionateScreenWidth(20.0),
                  bottom: getProportionateScreenHeight(15.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Order Placed Successfully!!",
                      style: kHeadingTextStyle.copyWith(
                          fontSize: getProportionateScreenWidth(20)),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
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
                                Text('${cartItems.length} item in this order',
                                    textAlign: TextAlign.center,
                                    style: kHeadingTextStyle),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: cartItems.length,
                                  itemBuilder: (context, index) {
                                    return OrderTile(
                                        cartItem: cartItems[index]);
                                  },
                                ),
                                BillDetails(
                                  totalCost: total,
                                ),
                                SizedBox(
                                  height: getProportionateScreenHeight(20),
                                ),
                                OrderDetails(
                                  modeOfPayment: modeOfPayment,
                                  oId: oId,
                                  dateTime: dateTime,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Text('Redirecting in few seconds....')
                    // CustomButton(
                    //   press: () {},
                    //   text: "Repeat Order",
                    // ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
