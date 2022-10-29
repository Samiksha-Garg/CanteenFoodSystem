import 'package:canteen_system/components/custom_app_bar.dart';
import 'package:canteen_system/components/custom_navigation_bar.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/models/Cart.dart';

import 'package:canteen_system/screens/cartScreen/components/cart_tile.dart';
import 'package:canteen_system/screens/cartScreen/components/place_order_card.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../../components/custom_button.dart';

class EditDetails extends StatelessWidget {
  const EditDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 3.0,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: getProportionateScreenHeight(20),
            left: getProportionateScreenWidth(20.0),
            right: getProportionateScreenWidth(20.0),
            bottom: getProportionateScreenHeight(15.0),
          ),
          child: Center(
            child: Column(children: <Widget>[
              Container(
                child: CircleAvatar(
                  radius: getProportionateScreenWidth(50),
                  backgroundImage: const NetworkImage(
                      'https://img.freepik.com/premium-vector/black-checker-chess-square-background_350503-56.jpg?w=2000'),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Text(
                'Change Photo',
                style: kHeadingTextStyle.copyWith(
                    fontSize: getProportionateScreenWidth(14)),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Name',
                  textAlign: TextAlign.left,
                  style: kHeadingTextStyle,
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              TextField(
                cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Aastha Pinhatiya',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Email-ID',
                  textAlign: TextAlign.left,
                  style: kHeadingTextStyle,
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              TextField(
                cursorColor: kPrimaryColor,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'aastha059btece21@igdtuw.ac.in',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Phone Number',
                  textAlign: TextAlign.left,
                  style: kHeadingTextStyle,
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              TextField(
                cursorColor: kPrimaryColor,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: '9590499440',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Graduation Year',
                  textAlign: TextAlign.left,
                  style: kHeadingTextStyle,
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              TextField(
                cursorColor: kPrimaryColor,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: '2025',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: CustomButton(text: "Save Changes", press: () {}),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
