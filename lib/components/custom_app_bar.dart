import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:badges/badges.dart';

AppBar customAppBar(String title) {
  return AppBar(
    leading: Padding(
      padding: const EdgeInsets.only(left: 8),
      child: IconButton(
        icon: Icon(Icons.favorite_border,
            color: kTextColor, size: getProportionateScreenWidth(30)),
        onPressed: () {},
      ),
    ),
    title: Center(
      child: Text(
        title,
        style: kAppBarTextStyle,
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(left: 8),
        child: IconButton(
          icon: Icon(Icons.notifications_outlined,
              color: kTextColor, size: getProportionateScreenWidth(30)),
          onPressed: () {},
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 10),
        child: IconButton(
          icon: Badge(
              badgeContent: Text(
                '0',
                style: TextStyle(color: Colors.black),
              ),
              animationDuration: Duration(milliseconds: 300),
              badgeColor: Colors.white,
              position: BadgePosition.topEnd(),
              child: Icon(Icons.shopping_cart_outlined,
                  color: kTextColor, size: getProportionateScreenWidth(30))),
          onPressed: () {},
        ),
      ),
    ],
  );
}
