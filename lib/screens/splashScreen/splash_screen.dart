import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

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
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: getProportionateScreenHeight(500),
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
          ],
        ),
      ),
    );
  }
}
