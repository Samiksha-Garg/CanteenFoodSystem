import 'package:canteen_system/helper/constants.dart';
import 'package:flutter/material.dart';

import '../helper/size_config.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, required this.press})
      : super(key: key);
  final String text;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: getProportionateScreenHeight(56),
        child: TextButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(kSecondaryColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              )),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
        ));
  }
}
