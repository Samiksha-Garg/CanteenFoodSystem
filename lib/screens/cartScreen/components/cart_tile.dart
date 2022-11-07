import 'dart:math';

import 'package:canteen_system/components/loading_bar.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/models/Cart.dart';
import 'package:canteen_system/providers/cart_provider.dart';
import 'package:canteen_system/providers/user_account.dart';
import 'package:canteen_system/screens/complaint_page/Components/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:provider/src/provider.dart';
import 'package:provider/src/consumer.dart';

class CartTile extends StatelessWidget {
  CartTile({Key? key, required this.cartItem, required this.index})
      : super(key: key);
  final CartItem cartItem;
  final int index;

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context, listen: false);
    return Container(
      margin: EdgeInsets.only(bottom: getProportionateScreenHeight(10)),
      height: getProportionateScreenHeight(130),
      width: double.infinity,
      decoration: BoxDecoration(
          color: kPrimaryLightColor, borderRadius: BorderRadius.circular(20)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              fit: BoxFit.fill,
              imageBuilder: (context, imageProvider) => Container(
                height: getProportionateScreenHeight(130),
                width: getProportionateScreenWidth(100),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  image:
                      DecorationImage(image: imageProvider, fit: BoxFit.fill),
                ),
              ),
              imageUrl: cartItem.product.imageUrl,
              placeholder: (context, url) => Container(
                height: getProportionateScreenHeight(70),
                width: getProportionateScreenWidth(100),
                margin: EdgeInsets.symmetric(
                    vertical: getProportionateScreenWidth(20)),
                decoration: BoxDecoration(
                  // color: Color(0xFF4A3298),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: MyLoadingBar(
                  isLoading: true,
                  child: Container(),
                )),
              ),
              errorWidget: (context, url, error) => Icon(Icons.error),
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
                      cartItem.product.name,
                      style: kSubHeadingTextStyle,
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(5),
                    ),
                    cartItem.product.isCustomisable
                        ? Text(
                            cartItem
                                .product.titles[cartItem.choosenCustomisation],
                            style: kSubHeadingTextStyle,
                          )
                        : Container(),
                    cartItem.product.isCustomisable
                        ? SizedBox(
                            height: getProportionateScreenHeight(5),
                          )
                        : Container(),
                    Consumer<CartProvider>(builder: (context, cartProvider, _) {
                      return Text(
                        // ignore: prefer_interpolation_to_compose_strings
                        '₹ ' +
                            (cartProvider.items.values
                                        .toList()[index]
                                        .quantity *
                                    (cartItem.product.isCustomisable
                                        ? cartItem.product.prices[
                                            cartItem.choosenCustomisation]
                                        : cartItem.product.mrp))
                                .toString() +
                            " /-",
                        style: kSubHeadingTextStyle,
                      );
                    }),
                    SizedBox(
                      height: getProportionateScreenHeight(5),
                    ),
                    Container(
                        height: getProportionateScreenHeight(20),
                        // width: getProportionateScreenWidth(100),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5)),
                        constraints: BoxConstraints(
                            minHeight: getProportionateScreenHeight(20),
                            minWidth: getProportionateScreenWidth(100)),
                        child: Consumer<CartProvider>(
                            builder: (context, cartProvider, _) {
                          return Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // if (cartProvider.items.values
                                  //         .toList()[index]
                                  //         .quantity ==
                                  //     1) {
                                  //   Scaffold.of(context).hideCurrentSnackBar();
                                  //   Scaffold.of(context).showSnackBar(
                                  //     SnackBar(
                                  //       content: Text(
                                  //           'Click on delete icon to remove'),
                                  //     ),
                                  //   );
                                  // } else {
                                  //   cartProvider.decreaseQty(
                                  //       cartItem.cId, userProvider.user.id);
                                  // }
                                },
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    primary: Colors.grey,
                                    side: BorderSide.none
                                    // side: BorderSide(color: Colors.black, width: 1),
                                    ),
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          getProportionateScreenHeight(15),
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(5),
                              ),
                              Text(
                                cartProvider.items.values
                                    .toList()[index]
                                    .quantity
                                    .toString(),
                                style: kSubHeadingTextStyle.copyWith(
                                    color: Colors.black),
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(5),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  cartProvider.increaseQty(
                                      cartItem.cId, userProvider.user.id);
                                },
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    primary: Colors.grey,
                                    side: BorderSide.none
                                    // side: BorderSide(color: Colors.black, width: 1),
                                    ),
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize:
                                          getProportionateScreenHeight(15),
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          );
                        })),
                  ],
                ),
              ),
            ),
            Consumer<CartProvider>(builder: (context, cartProvider, _) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    cartProvider.removeItem(cartItem.cId, userProvider.user.id);
                  },
                  child: const Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
              );
            })
          ]),
    );
  }
}
