import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:flutter/material.dart';

class MoodTile extends StatelessWidget {
  const MoodTile({Key? key, required this.image, required this.title})
      : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(130),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: kPrimaryLightColor),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: getProportionateScreenHeight(130),
              width: getProportionateScreenHeight(120),
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(title,
                    textAlign: TextAlign.center, style: kAppBarTextStyle),
              ),
            ),
          ]),
    );
  }
}
