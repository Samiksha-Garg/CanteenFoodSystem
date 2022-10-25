import 'package:canteen_system/components/loading_bar.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:provider/provider.dart';

import '../../helper/size_config.dart';
import '../../providers/auth_service.dart';
import '../../providers/user_account.dart';

class FetchingInfo extends StatefulWidget {
  const FetchingInfo({Key? key}) : super(key: key);

  @override
  State<FetchingInfo> createState() => _FetchingInfoState();
}

class _FetchingInfoState extends State<FetchingInfo> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      var authProvider = Provider.of<Authentication>(context, listen: false);
      var userAccountProvider =
          Provider.of<UserProvider>(context, listen: false);
      userAccountProvider.setContext = context;
      userAccountProvider.fetchAccountDetails(authProvider.user.uid);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: MyLoadingBar(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: getProportionateScreenHeight(500),
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/spaceChef.png",
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                        Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              height: 5,
                              width: getProportionateScreenWidth(375.0),
                              color: kPrimaryColor,
                            )),
                        Positioned(
                            bottom: 0,
                            child: Container(
                              height: 5,
                              width: getProportionateScreenWidth(375.0),
                              color: kPrimaryColor,
                            )),
                      ],
                    ),
                    Text(
                      "SPACE CANTEEN",
                      style: kAppBarTextStyle.copyWith(
                          fontSize: getProportionateScreenWidth(40)),
                    ),
                  ],
                ),
              ),
              AnimatedTextKit(repeatForever: true, animatedTexts: [
                TyperAnimatedText('Fetching Information.....',
                    textStyle: TextStyle(color: kTextColor)),
                TyperAnimatedText('Setting up your account....',
                    textStyle: TextStyle(color: kTextColor)),
                TyperAnimatedText('Hang Tight...',
                    textStyle: TextStyle(color: kTextColor))
              ])
            ],
          ),
          isLoading: true),
    ));
  }
}
