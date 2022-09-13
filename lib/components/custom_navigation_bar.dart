import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.1),
          ),
        ],
        // borderRadius: const BorderRadius.only(
        //   topLeft: Radius.circular(40),
        //   topRight: Radius.circular(40),
        // ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.home_outlined,
                      color: kTextColor,
                      size: getProportionateScreenWidth(30),
                    ),
                    onPressed: () {},
                  ),
                  Text('Home')
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.logout,
                      color: kTextColor,
                      size: getProportionateScreenWidth(30),
                    ),
                    onPressed: () {},
                  ),
                  Text('Order')
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.settings_outlined,
                      color: kTextColor,
                      size: getProportionateScreenWidth(30),
                    ),
                    onPressed: () {},
                  ),
                  Text('Settings')
                ],
              ),
            ],
          )),
    );
  }
}
