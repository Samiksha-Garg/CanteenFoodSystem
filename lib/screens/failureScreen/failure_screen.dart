import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:flutter/material.dart';

import '../../components/custom_button.dart';

class FailureScreen extends StatelessWidget {
  const FailureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.cancel_outlined,
                  color: kTextColor,
                  size: getProportionateScreenWidth(200),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Text(
                  "Order Failed",
                  style: kHeadingTextStyle.copyWith(
                      fontSize: getProportionateScreenWidth(25)),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Oops something went terribly wrong here!",
                    textAlign: TextAlign.center,
                    style: kHeadingTextStyle,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Your payment wasn't completed!",
                    textAlign: TextAlign.center,
                    style:
                        kHeadingTextStyle.copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(getProportionateScreenWidth(50)),
                  child: CustomButton(
                    press: () {
                      Navigator.pop(context);
                    },
                    text: "Please try again",
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
