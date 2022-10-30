import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/providers/auth_service.dart';
import 'package:canteen_system/providers/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:provider/src/consumer.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.1),
          ),
        ],
        // borderRadius: const BorderRadius.only(
        //   topLeft: Radius.circular(40),
        //   topRight: Radius.circular(40),
        // ),
      ),
      child: SafeArea(
          top: false,
          child: Consumer<BottomNavigationBarProvider>(
              builder: (context, provider, _) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.home_outlined,
                        color: provider.currentIndex == 0
                            ? Colors.pink[100]
                            : kTextColor,
                        size: getProportionateScreenWidth(30),
                      ),
                      onPressed: () {
                        provider.toggleTabs(0);
                      },
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                          color: provider.currentIndex == 0
                              ? Colors.pink[100]
                              : kTextColor),
                    )
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.logout,
                        color: provider.currentIndex == 1
                            ? Colors.pink[100]
                            : kTextColor,
                        size: getProportionateScreenWidth(30),
                      ),
                      onPressed: () {
                        provider.toggleTabs(1);
                      },
                    ),
                    Text(
                      'Orders',
                      style: TextStyle(
                          color: provider.currentIndex == 1
                              ? Colors.pink[100]
                              : kTextColor),
                    )
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.settings_outlined,
                        color: provider.currentIndex == 2
                            ? Colors.pink[100]
                            : kTextColor,
                        size: getProportionateScreenWidth(30),
                      ),
                      onPressed: () {
                        // Provider.of<Authentication>(context, listen: false)
                        //     .signOut();
                        provider.toggleTabs(2);
                      },
                    ),
                    Text(
                      'Settings',
                      style: TextStyle(
                          color: provider.currentIndex == 2
                              ? Colors.pink[100]
                              : kTextColor),
                    )
                  ],
                ),
              ],
            );
          })),
    );
  }
}
