import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
class TextBox extends StatelessWidget {
  const TextBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              ' We apologise for the inconvenience caused!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(15),
                  color: kTextColor,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              ' Kindly give us 2-3 to get back at your issue',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(15),
                  color: kTextColor,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Thanks for your cooperation!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(15),
                  color: kTextColor,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
          ]);
}
