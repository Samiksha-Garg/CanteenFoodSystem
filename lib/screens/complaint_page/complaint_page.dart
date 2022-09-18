import 'package:canteen_system/components/custom_app_bar.dart';
import 'package:canteen_system/components/custom_navigation_bar.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/models/Cart.dart';
import 'package:canteen_system/screens/cartScreen/components/cart_tile.dart';
import 'package:canteen_system/screens/cartScreen/components/place_order_card.dart';
import 'package:flutter/material.dart';

import '../../components/custom_button.dart';
import 'package:canteen_system/screens/complaint_page/Components/dropdown.dart';
import 'package:canteen_system/screens/complaint_page/Components/textbox.dart';

class ComplaintPage extends StatelessWidget {
  const ComplaintPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(getProportionateScreenHeight(5)),
          child: Center(
              child: Column(children: <Widget>[
            Text(
              ' REACH US',
              style: kAppBarTextStyle.copyWith(
                  fontSize: getProportionateScreenWidth(28)),
            ),
            SizedBox(
              height: getProportionateScreenHeight(5),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Container(
                  decoration: BoxDecoration(
                      color: kPrimaryLightColor,
                      borderRadius: BorderRadius.circular(17)),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: getProportionateScreenHeight(10),
                          ),
                          Text(
                            "Facing Any Issues?",
                            style: kAppBarTextStyle.copyWith(
                                fontSize: getProportionateScreenWidth(15)),
                          ),
                          SizedBox(height: getProportionateScreenHeight(10)),
                          const DropDown(),
                          SizedBox(
                            height: getProportionateScreenHeight(20),
                          ),
                          Center(
                            child: Container(
                              padding: EdgeInsets.all(5),
                              width: getProportionateScreenWidth(250),

                              // margin: const EdgeInsets.all(25),
                              decoration: BoxDecoration(
                                color: Color(0xffD6D5D7),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Text("  Description",
                                  style: TextStyle(
                                      fontSize: getProportionateScreenWidth(14),
                                      color: Colors.black)),
                            ),
                          ),
                          SizedBox(height: getProportionateScreenHeight(20)),
                          Center(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(20)),
                              width: getProportionateScreenWidth(250),
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                minLines: 5,
                                maxLines: 5,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText:
                                        'Please provide a short decription about the problem faced',
                                    hintStyle: TextStyle(
                                        fontSize:
                                            getProportionateScreenWidth(10),
                                        color: Colors.white,
                                        fontStyle: FontStyle.italic)),
                                cursorColor: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(10),
                          ),
                          Center(
                              child: TextButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xffD6D5D7)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                )),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    fontSize: getProportionateScreenWidth(18),
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          )),
                          SizedBox(
                            height: getProportionateScreenHeight(10),
                          )
                        ]),
                  )),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: kPrimaryLightColor,
                      borderRadius: BorderRadius.circular(17)),
                  width: double.infinity,
                  child: TextBox()),
            )
          ])),
        ),
      ),
    );
  }
}
