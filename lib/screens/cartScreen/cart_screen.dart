import 'package:canteen_system/components/custom_app_bar.dart';
import 'package:canteen_system/components/custom_navigation_bar.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/models/Cart.dart';
import 'package:canteen_system/screens/cartScreen/components/cart_tile.dart';
import 'package:canteen_system/screens/cartScreen/components/place_order_card.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var items = [
      CartItem(
          product: "Penne Sauce Pasta",
          price: 170.50,
          quantity: 2,
          image: "assets/images/Pasta.jpeg"),
      CartItem(
          product: "Burger",
          price: 85.00,
          quantity: 1,
          image: "assets/images/burger.jpeg"),
      CartItem(
          product: "Blueberry Pancakes",
          price: 99.00,
          quantity: 1,
          image: "assets/images/pancake.jpg"),
      CartItem(
          product: "Blueberry Pancakes",
          price: 99.00,
          quantity: 1,
          image: "assets/images/pancake.jpg"),
    ];
    SizeConfig().init(context);
    return Scaffold(
      appBar: customAppBar("My Cart"),
      bottomNavigationBar: const CustomBottomNavBar(),
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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Cart (3)',
                      style: kHeadingTextStyle,
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          return CartTile(
                            qty: items[index].quantity.toString(),
                            picture: items[index].image,
                            title: items[index].product,
                            price: items[index].price.toString(),
                          );
                        }),
                  ]),
            ),
          ),
          // child:
        ),
        PlaceOrderCard()
      ]),
    );
  }
}
