import 'package:canteen_system/helper/size_config.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Ratings extends StatelessWidget {
  const Ratings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Color(0xffFFD700),
          size: getProportionateScreenWidth(15),
        ),
        Icon(
          Icons.star,
          color: Color(0xffFFD700),
          size: getProportionateScreenWidth(15),
        ),
        Icon(
          Icons.star,
          color: Color(0xffFFD700),
          size: getProportionateScreenWidth(15),
        ),
        Icon(
          Icons.star,
          color: Color(0xffFFD700),
          size: getProportionateScreenWidth(15),
        ),
        Icon(
          Icons.star,
          color: Color(0xffFFD700),
          size: getProportionateScreenWidth(15),
        ),
      ],
    );
  }
}
