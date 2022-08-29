import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

AppBar customAppBar(String title) {
  return AppBar(
    title: Center(
      child: Text(
        title,
        style: kAppBarTextStyle,
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8),
        child: CircleAvatar(
            backgroundColor: kTextColor,
            radius: getProportionateScreenWidth(20),
            child: CircleAvatar(
              backgroundColor: kSecondaryColor,
              radius: getProportionateScreenWidth(16),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    color: kTextColor,
                    size: getProportionateScreenWidth(18),
                  )),
            )),
      )
    ],
  );
}
