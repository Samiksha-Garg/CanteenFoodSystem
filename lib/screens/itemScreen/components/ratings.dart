import 'package:canteen_system/helper/size_config.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Ratings extends StatelessWidget {
  const Ratings({Key? key, required this.rating}) : super(key: key);
  final int rating;

  @override
  Widget build(BuildContext context) {
    List<Widget> stars = [];
    for (int i = 0; i < rating; i++) {
      stars.add(const StarWidget());
    }
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: stars);
  }
}

class StarWidget extends StatelessWidget {
  const StarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: Color(0xffFFD700),
      size: getProportionateScreenWidth(15),
    );
  }
}
