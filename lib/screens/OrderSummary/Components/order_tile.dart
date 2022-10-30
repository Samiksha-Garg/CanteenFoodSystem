import 'package:canteen_system/components/loading_bar.dart';
import 'package:canteen_system/models/Cart.dart';
import 'package:flutter/material.dart';

import '../../../helper/constants.dart';
import '../../../helper/size_config.dart';
import 'package:cached_network_image/cached_network_image.dart';

class OrderTile extends StatelessWidget {
  const OrderTile({Key? key, required this.cartItem}) : super(key: key);

  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: getProportionateScreenHeight(90),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kPrimaryLightColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: getProportionateScreenHeight(90),
                    width: getProportionateScreenWidth(80),
                    child: CachedNetworkImage(
                      fit: BoxFit.fill,
                      imageUrl: cartItem.product.imageUrl,
                      placeholder: (context, url) => Container(
                        margin: EdgeInsets.symmetric(
                            vertical: getProportionateScreenWidth(20)),
                        decoration: BoxDecoration(
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

                    // Image.asset(
                    //   "assets/images/burger.jpeg",
                    //   height: getProportionateScreenHeight(90),
                    //   width: getProportionateScreenWidth(80),
                    //   fit: BoxFit.fill,
                    // ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(5),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            cartItem.product.name,
                            textAlign: TextAlign.start,
                            style: kHeadingTextStyle.copyWith(
                                fontSize: getProportionateScreenWidth(13)),
                          ),
                        ),
                        cartItem.product.isCustomisable
                            ? Text(cartItem
                                .product.titles[cartItem.choosenCustomisation])
                            : Container(),
                        Text('x ${cartItem.quantity}')
                      ],
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(5),
                  ),
                  Text(
                    cartItem.product.isCustomisable
                        ? ("\u{20B9} ${cartItem.product.prices[cartItem.choosenCustomisation] * cartItem.quantity}")
                        : "\u{20B9} ${cartItem.product.mrp * cartItem.quantity}",
                    textAlign: TextAlign.start,
                    style: kHeadingTextStyle.copyWith(
                        fontSize: getProportionateScreenWidth(13)),
                  ),
                ],
              ),
            )),
        SizedBox(
          height: getProportionateScreenHeight(20),
        )
      ],
    );
  }
}
