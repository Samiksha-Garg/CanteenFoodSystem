import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/models/Orders.dart';
import 'package:canteen_system/screens/OrderSummary/Components/bill_details.dart';
import 'package:canteen_system/screens/OrderSummary/Components/order_details.dart';
import 'package:canteen_system/screens/OrderSummary/Components/order_tile.dart';
import 'package:flutter/material.dart';

class OrderSummary extends StatelessWidget {
  OrderSummary({Key? key, required this.orders, required this.total})
      : super(key: key);
  final Orders orders;
  double total;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: const CustomBottomNavBar(),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: IconButton(
            icon: Icon(Icons.arrow_back,
                color: kTextColor, size: getProportionateScreenWidth(30)),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
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
                  color: kTextColor, size: getProportionateScreenWidth(30)),
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
            Center(
              child: Container(
                width: getProportionateScreenWidth(400),
                height: getProportionateScreenHeight(600),
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
                        Text('${orders.cartItems.length} item in this order',
                            textAlign: TextAlign.center,
                            style: kHeadingTextStyle),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: orders.cartItems.length,
                          itemBuilder: (context, index) {
                            return OrderTile(cartItem: orders.cartItems[index]);
                          },
                        ),
                        BillDetails(
                          totalCost: total,
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(20),
                        ),
                        OrderDetails(
                          modeOfPayment: orders.paymentMethod,
                          oId: orders.orderId,
                          dateTime: orders.dateTime,
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

            // CustomButton(
            //   press: () {},
            //   text: "Repeat Order",
            // ),
          ],
        ),
      ),
    );
  }
}
