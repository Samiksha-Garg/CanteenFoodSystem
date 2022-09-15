import 'package:canteen_system/components/custom_app_bar.dart';
import 'package:canteen_system/components/custom_navigation_bar.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Payment(),
  ));
}

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(48, 46, 59, 1),
      appBar: customAppBar("Payment"),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                Container(
                  padding: EdgeInsets.all(25),
                  margin: EdgeInsets.only(bottom: 10),
                  width: getProportionateScreenWidth(300),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Debit/Credit Card',
                    textAlign: TextAlign.start,
                    style: kHeadingTextStyle.copyWith(color: Colors.black),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(25),
                  margin: EdgeInsets.only(bottom: 10),
                  width: getProportionateScreenWidth(300),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'GPay',
                    textAlign: TextAlign.start,
                    style: kHeadingTextStyle.copyWith(color: Colors.black),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(25),
                  margin: EdgeInsets.only(bottom: 10),
                  width: getProportionateScreenWidth(300),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Paytm',
                    textAlign: TextAlign.start,
                    style: kHeadingTextStyle.copyWith(color: Colors.black),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(25),
                  margin: EdgeInsets.only(bottom: 10),
                  width: getProportionateScreenWidth(300),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'PhonePay',
                    textAlign: TextAlign.start,
                    style: kHeadingTextStyle.copyWith(color: Colors.black),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(25),
                  margin: EdgeInsets.only(bottom: 10),
                  width: getProportionateScreenWidth(300),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'Cash',
                    textAlign: TextAlign.start,
                    style: kHeadingTextStyle.copyWith(color: Colors.black),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(25),
                  margin: EdgeInsets.only(bottom: 10),
                  width: getProportionateScreenWidth(300),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(2, 51, 112, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    '+ Add Payment Option',
                    textAlign: TextAlign.center,
                    style: kHeadingTextStyle,
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
