

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
      backgroundColor: Color.fromRGBO(48, 46, 59, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(48, 46, 59, 1),
        elevation: 3.0,
        leading: IconButton(
          icon: ImageIcon(
            NetworkImage(
                'https://www.flaticon.com/free-icon-font/angle-left_3916912'),
            size: 30.0,
          ),
          onPressed: () {},
        ),
        
        
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: getProportionateScreenHeight(40.0),
            left: getProportionateScreenWidth(20.0),
            right: getProportionateScreenWidth(20.0),
            bottom: getProportionateScreenHeight(15.0),
          ),
          child: Center(
            child: Column(children: <Widget>[
              Container(
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/premium-vector/black-checker-chess-square-background_350503-56.jpg?w=2000'),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Text(
                'Change Photo',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'Name',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Aastha Pinhatiya',
                    filled: true,
                    fillColor: Colors.white,
                  ),
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
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Container(
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'aastha059btece21@igdtuw.ac.in',
                    filled: true,
                    fillColor: Colors.white,
                  ),
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
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Container(
                
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '9590499440',
                      
                      filled: true,
                      fillColor: Colors.white,
                      
      
                    ),
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
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Container(
                
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '2025',
                      
                      filled: true,
                      fillColor: Colors.white,
                      
      
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Container(
                  alignment: Alignment.center,
                  height: getProportionateScreenHeight(80),
                  width: getProportionateScreenWidth(200),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(43, 21, 89, 1),
                
                  ),
                  child: Text(
                    'Save Changes',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              
            ]),
          ),
        ),
      ),
    );
  }
}
