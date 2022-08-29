import 'package:canteen_system/components/custom_button.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:flutter/material.dart';

class PlaceOrderCard extends StatelessWidget {
  const PlaceOrderCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              '\u{20B9} 345.50',
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
            press: () {},
            text: "Place Order",
          ),
        )
      ]),
    );
  }
}
