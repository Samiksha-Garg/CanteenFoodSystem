import 'package:canteen_system/helper/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../components/custom_app_bar.dart';
import '../../components/custom_navigation_bar.dart';
import '../../helper/size_config.dart';

class OrderStatus extends StatelessWidget {
  const OrderStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: customAppBar("Status"),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(30),
                ),
                Text(
                  'ORDER STATUS',
                  style: kAppBarTextStyle,
                ),
                Text(
                  'Invoice : 456',
                  style: kSubHeadingTextStyle,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.pan_tool_alt_rounded,
                        color: Colors.white,
                        size: getProportionateScreenWidth(50),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      Expanded(
                        child: Text(
                          'Your Order is accepted by the owner',
                          textAlign: TextAlign.center,
                          style: kSubHeadingTextStyle,
                        ),
                      )
                    ],
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: getProportionateScreenWidth(50),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.timer,
                        color: Colors.white,
                        size: getProportionateScreenWidth(50),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      Expanded(
                        child: Text(
                          'Being prepared',
                          textAlign: TextAlign.center,
                          style: kSubHeadingTextStyle,
                        ),
                      )
                    ],
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: getProportionateScreenWidth(50),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.done,
                        color: Colors.white,
                        size: getProportionateScreenWidth(50),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(20),
                      ),
                      Expanded(
                        child: Text(
                          'Your Order is ready to be taken',
                          textAlign: TextAlign.center,
                          style: kSubHeadingTextStyle,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'View your order',
                style: kSubHeadingTextStyle.copyWith(
                    decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      )),
    );
  }
}
