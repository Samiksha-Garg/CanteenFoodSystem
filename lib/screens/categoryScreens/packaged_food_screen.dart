import 'package:canteen_system/components/custom_app_bar.dart';
import 'package:canteen_system/components/custom_navigation_bar.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PackagedFoodScreen extends StatelessWidget {
  const PackagedFoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: customAppBar("Packaged Food"),
        body: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10),
                vertical: getProportionateScreenHeight(20)),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: getProportionateScreenWidth(15),
              mainAxisSpacing: getProportionateScreenHeight(10),
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/tile.jpg",
                          ),
                          fit: BoxFit.fill)),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/tile.jpg",
                          ),
                          fit: BoxFit.fill)),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/tile.jpg",
                          ),
                          fit: BoxFit.fill)),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/tile.jpg",
                          ),
                          fit: BoxFit.fill)),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/tile.jpg",
                          ),
                          fit: BoxFit.fill)),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/tile.jpg",
                          ),
                          fit: BoxFit.fill)),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/tile.jpg",
                          ),
                          fit: BoxFit.fill)),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/tile.jpg",
                          ),
                          fit: BoxFit.fill)),
                ),
              ],
            )),
        bottomNavigationBar: CustomBottomNavBar());
  }
}
