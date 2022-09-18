import 'package:flutter/material.dart';

import '../../../helper/constants.dart';
import '../../../helper/size_config.dart';

class OrderTile extends StatelessWidget {
  const OrderTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: getProportionateScreenHeight(90),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kPrimaryLightColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Image.asset(
                  "assets/images/burger.jpeg",
                  height: getProportionateScreenHeight(90),
                  width: getProportionateScreenWidth(80),
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(5),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "Super spicy chicken burger",
                        textAlign: TextAlign.start,
                        style: kHeadingTextStyle.copyWith(
                            fontSize: getProportionateScreenWidth(13)),
                      ),
                    ),
                    Text('x 1')
                  ],
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(5),
              ),
              Text(
                "\u{20B9} 104.0",
                textAlign: TextAlign.start,
                style: kHeadingTextStyle.copyWith(
                    fontSize: getProportionateScreenWidth(13)),
              ),
            ],
          ),
        ));
  }
}
