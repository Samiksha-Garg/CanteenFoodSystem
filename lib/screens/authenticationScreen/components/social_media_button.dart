import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.image,
  }) : super(key: key);

  final String title;
  final void Function()? onPressed;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: getProportionateScreenHeight(10)),
      padding: EdgeInsets.all(1.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black12,
              Colors.black12,
            ],
          ),
          // color: Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(13)),
      child: Center(
        child: TextButton(
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: getProportionateScreenHeight(30),
                width: getProportionateScreenWidth(30),
                //   margin: EdgeInsets.all(2000.0),
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.transparent,
                ),
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(2),
              ),
              Text(
                title,
                style: kHeadingTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
