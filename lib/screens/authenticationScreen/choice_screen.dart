import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/screens/authenticationScreen/login_screen.dart';
import 'package:canteen_system/screens/authenticationScreen/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../helper/size_config.dart';

class AuthChoiceScreen extends StatelessWidget {
  const AuthChoiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Row(
          children: [
            Container(
              height: getProportionateScreenHeight(50),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: Image.asset(
                'assets/images/logo.jpeg',
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10)),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: getProportionateScreenHeight(380),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/images/spaceChef.png",
                              ),
                              fit: BoxFit.fill)),
                    ),
                    Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          height: 5,
                          width: getProportionateScreenWidth(375.0),
                          color: kPrimaryColor,
                        )),
                    Positioned(
                        bottom: 0,
                        child: Container(
                          height: 5,
                          width: getProportionateScreenWidth(375.0),
                          color: kPrimaryColor,
                        )),
                  ],
                ),
                Text(
                  "SPACE CANTEEN",
                  style: kAppBarTextStyle.copyWith(
                      fontSize: getProportionateScreenWidth(40)),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(5),
                ),
                Text(
                  "Order at your convieince, convinient , time saving and fun!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: getProportionateScreenWidth(18)),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(40),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                        vertical: getProportionateScreenHeight(15)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: kSecondaryColor),
                    child: Builder(builder: (context) {
                      return Center(
                        child: Text(
                          "Login",
                          style: kHeadingTextStyle,
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                        vertical: getProportionateScreenHeight(15)),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: kSecondaryColor,
                            width: getProportionateScreenWidth(3)),
                        borderRadius: BorderRadius.circular(20),
                        color: kPrimaryColor),
                    child: Builder(builder: (context) {
                      return Center(
                        child: Text(
                          "Sign Up",
                          style: kHeadingTextStyle,
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
