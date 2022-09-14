import 'package:canteen_system/components/custom_button.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:flutter/material.dart';

class BillDetails extends StatelessWidget {
  const BillDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kPrimaryLightColor,
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: getProportionateScreenHeight(10.0),
            bottom: getProportionateScreenHeight(10.0),
            left: getProportionateScreenWidth(15.0),
            right: getProportionateScreenWidth(15.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Bill Details",
                  style: kHeadingTextStyle.copyWith(
                      fontSize: getProportionateScreenWidth(15))),
              SizedBox(
                height: getProportionateScreenHeight(5),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("MRP",
                    textAlign: TextAlign.start,
                    style: kHeadingTextStyle.copyWith(
                        fontSize: getProportionateScreenWidth(12))),
                Text("\u{20B9} 104.0",
                    style: kHeadingTextStyle.copyWith(
                        fontSize: getProportionateScreenWidth(12))),
              ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Product Discount",
                        textAlign: TextAlign.start,
                        style: kHeadingTextStyle.copyWith(
                            fontSize: getProportionateScreenWidth(12))),
                    Text("\u{20B9} 0.00",
                        style: kHeadingTextStyle.copyWith(
                            fontSize: getProportionateScreenWidth(12))),
                  ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Bill Total",
                    textAlign: TextAlign.start,
                    style: kHeadingTextStyle.copyWith(
                        fontSize: getProportionateScreenWidth(12))),
                Text("\u{20B9} 104.0",
                    textAlign: TextAlign.end,
                    style: kHeadingTextStyle.copyWith(
                        fontSize: getProportionateScreenWidth(12))),
              ]),
            ],
          ),
        ));
  }
}
