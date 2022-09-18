import 'package:canteen_system/components/custom_app_bar.dart';
import 'package:canteen_system/components/custom_button.dart';
import 'package:canteen_system/components/custom_navigation_bar.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/screens/itemScreen/components/choose_customisation.dart';
import 'package:canteen_system/screens/itemScreen/components/ratings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../helper/size_config.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: customAppBar("Item"),
      bottomNavigationBar: CustomBottomNavBar(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              onPressed: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    builder: (context) {
                      return Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: kPrimaryColor),
                        child: Padding(
                          padding:
                              EdgeInsets.all(getProportionateScreenWidth(15)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: getProportionateScreenWidth(15)),
                                  child: IconButton(
                                    icon: Icon(Icons.arrow_back_ios,
                                        color: kTextColor,
                                        size: getProportionateScreenWidth(20)),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    "Coke",
                                    style: kAppBarTextStyle,
                                  ),
                                ),
                                Ratings(),
                                SizedBox(
                                  height: getProportionateScreenHeight(10),
                                ),
                                Center(
                                    child: Container(
                                  height: getProportionateScreenHeight(150),
                                  width: getProportionateScreenWidth(150),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/default.png"),
                                          fit: BoxFit.fill)),
                                  // child: Image.asset(
                                  //     "assets/images/default.png", fit: BoxFit.fill,),
                                )),
                                SizedBox(
                                  height: getProportionateScreenHeight(15),
                                ),
                                ChooseCustomisation(),
                                SizedBox(
                                  height: getProportionateScreenHeight(15),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          getProportionateScreenWidth(50)),
                                  child: CustomButton(
                                      text: "Add to Cart", press: () {}),
                                ),
                                SizedBox(
                                  height: getProportionateScreenHeight(15),
                                ),
                                Container(
                                  padding: EdgeInsets.all(
                                      getProportionateScreenWidth(10)),
                                  color: kSecondaryColor,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Total : ",
                                        style: kAppBarTextStyle,
                                      ),
                                      Text("Rs. 40")
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: getProportionateScreenHeight(15),
                                ),
                              ]),
                        ),
                      );
                    });
              },
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
              color: Colors.pink,
              child: Text(
                'View Bottom Sheet',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
