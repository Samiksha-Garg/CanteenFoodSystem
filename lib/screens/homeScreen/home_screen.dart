import 'dart:ffi';

import 'package:canteen_system/components/custom_app_bar.dart';
import 'package:canteen_system/components/custom_navigation_bar.dart';
import 'package:canteen_system/helper/enums.dart';
import 'package:canteen_system/screens/categoryScreens/category_screen.dart';
import "package:flutter/material.dart";

import '../../helper/size_config.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: customAppBar("MENU"),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              constraints:
                  BoxConstraints(minHeight: getProportionateScreenHeight(150)),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/WhatsApp_Image_2022-09-03_at_21.34 1.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all((getProportionateScreenWidth(20))),
                child: Center(
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "What are you craving for ?",
                              hintStyle: TextStyle(
                                  color: Colors.grey[900],
                                  fontSize: getProportionateScreenHeight(14)),
                              icon: Icon(Icons.search, color: Colors.grey[900]),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {},
                                  icon:
                                      Icon(Icons.add, color: Colors.grey[900]),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(5),
            ),
            Text(
              'CATEGORIES',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: getProportionateScreenWidth(24),
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            CategoryScreen(category: Categories.Beverages)));
              },
              child: Container(
                height: getProportionateScreenHeight(100),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/Group 2.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Container(
              height: getProportionateScreenHeight(100),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.deepPurple[400],
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/images/Group 3.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Container(
              height: getProportionateScreenHeight(100),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.deepPurple[900],
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/images/Group 4.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            )
          ],
        )),
        bottomNavigationBar: CustomBottomNavBar());
  }
}
