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
import 'package:canteen_system/screens/ordersScreen/components/current_order_tile.dart';
import 'package:canteen_system/screens/ordersScreen/components/past_order_tile.dart';
import 'package:canteen_system/screens/statusScreen/status_screen.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/src/consumer.dart';

class AllOrdersScreen extends StatelessWidget {
  const AllOrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Orders"),
      bottomNavigationBar: CustomBottomNavBar(),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(15),
            vertical: getProportionateScreenHeight(15)),
        child: Consumer<OrderProvider>(builder: (context, orderProvider, _) {
          List<Orders> current = [];
          List<Orders> past = [];

          for (Orders orders in orderProvider.orders) {
            if (orders.orderStatus == OrderStat.Delivered) {
              past.add(orders);
            } else {
              current.add(orders);
            }
          }

          return MyLoadingBar(
            isLoading: orderProvider.isLoading,
            child: (current.length == 0 && past.length == 0)
                ? Container(
                    height: getProportionateScreenHeight(400),
                    child: Center(child: Text("No orders yet!")),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      current.length != 0
                          ? Text(
                              "Current Orders",
                              style: kHeadingTextStyle.copyWith(
                                  decoration: TextDecoration.underline),
                            )
                          : Container(),
                      current.length != 0
                          ? SizedBox(
                              height: getProportionateScreenHeight(20),
                            )
                          : Container(),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: current.length,
                        itemBuilder: (context, index) {
                          return CurrentOrderTile(order: current[index]);
                        },
                      ),
                      // CurrentOrderTile(order: order, total: total),
                      SizedBox(
                        height: getProportionateScreenHeight(20),
                      ),
                      past.length != 0
                          ? Text(
                              "Past Orders",
                              style: kHeadingTextStyle.copyWith(
                                  decoration: TextDecoration.underline),
                            )
                          : Container(),
                      past.length != 0
                          ? SizedBox(
                              height: getProportionateScreenHeight(20),
                            )
                          : Container(),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: past.length,
                        itemBuilder: (context, index) {
                          return PastOrderTile(order: past[index]);
                        },
                      ),
                    ],
                  ),
          );
        }),
      )),
    );
  }
}
