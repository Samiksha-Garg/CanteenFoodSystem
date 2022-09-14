import 'package:canteen_system/components/custom_button.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Order Details",
                  style: kHeadingTextStyle.copyWith(
                      fontSize: getProportionateScreenWidth(15))),
              SizedBox(
                height: getProportionateScreenHeight(5),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Order ID",
                    style: kHeadingTextStyle.copyWith(
                        fontSize: getProportionateScreenWidth(12))),
                Text("IGDTUW0057",
                    textAlign: TextAlign.end,
                    style: kHeadingTextStyle.copyWith(
                        fontSize: getProportionateScreenWidth(12))),
              ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Payment Mode",
                        textAlign: TextAlign.start,
                        style: kHeadingTextStyle.copyWith(
                            fontSize: getProportionateScreenWidth(12))),
                    Text("Cash On Delivery",
                        textAlign: TextAlign.end,
                        style: kHeadingTextStyle.copyWith(
                            fontSize: getProportionateScreenWidth(12))),
                  ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Order Placed",
                    textAlign: TextAlign.start,
                    style: kHeadingTextStyle.copyWith(
                        fontSize: getProportionateScreenWidth(12))),
                Text("Placed Yesterday,1:01pm",
                    textAlign: TextAlign.end,
                    style: kHeadingTextStyle.copyWith(
                        fontSize: getProportionateScreenWidth(12))),
              ]),
            ],
          ),
        ));
  }
}
