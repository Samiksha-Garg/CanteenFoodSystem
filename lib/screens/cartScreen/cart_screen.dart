import 'package:canteen_system/components/custom_app_bar.dart';
import 'package:canteen_system/components/custom_navigation_bar.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/models/Cart.dart';
import 'package:canteen_system/providers/cart_provider.dart';
import 'package:canteen_system/screens/cartScreen/components/cart_tile.dart';
import 'package:canteen_system/screens/cartScreen/components/place_order_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/consumer.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
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
            "My Cart",
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
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
                top: getProportionateScreenHeight(15),
                left: getProportionateScreenWidth(20),
                right: getProportionateScreenWidth(20),
                bottom: getProportionateScreenHeight(15)),
            child: SingleChildScrollView(
              child: Consumer<CartProvider>(builder: (context, cart, _) {
                List<CartItem> itemList = cart.items.values.toList();
                return itemList.length == 0
                    ? Container(
                        height: getProportionateScreenHeight(406),
                        child: Center(child: Text('Your Cart is Empty!')),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text(
                              'Your Cart (${itemList.length})',
                              style: kHeadingTextStyle,
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(10),
                            ),
                            ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: itemList.length,
                                itemBuilder: (context, index) {
                                  return CartTile(
                                    cartItem: itemList[index],
                                    index: index,
                                  );
                                }),
                          ]);
              }),
            ),
          ),
          // child:
        ),
        PlaceOrderCard()
      ]),
    );
  }
}
