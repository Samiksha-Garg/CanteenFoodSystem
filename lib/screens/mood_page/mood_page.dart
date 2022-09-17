import 'package:canteen_system/components/custom_app_bar.dart';
import 'package:canteen_system/components/custom_navigation_bar.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/models/Cart.dart';

import 'package:canteen_system/screens/cartScreen/components/cart_tile.dart';
import 'package:canteen_system/screens/cartScreen/components/place_order_card.dart';
import 'package:canteen_system/screens/mood_page/components/mood_tile.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../../components/custom_button.dart';

class MoodPage extends StatelessWidget {
  const MoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: customAppBar("Mood Page"),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: Padding(
          padding: EdgeInsets.only(
            top: getProportionateScreenHeight(40.0),
            left: getProportionateScreenWidth(20.0),
            right: getProportionateScreenWidth(20.0),
            bottom: getProportionateScreenHeight(15.0),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("What's your Mood Today?",
                    textAlign: TextAlign.center, style: kAppBarTextStyle),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                MoodTile(
                  image: "assets/images/happy.png",
                  title: "Happy",
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                MoodTile(
                  image: "assets/images/angry.png",
                  title: "Angry",
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                MoodTile(
                  image: "assets/images/sad.png",
                  title: "Sad",
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                MoodTile(
                  image: "assets/images/confused.png",
                  title: "Confused",
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                // Container(
                //   height: getProportionateScreenHeight(130),
                //   width: getProportionateScreenWidth(350),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(20),
                //     color: Color.fromRGBO(68, 64, 77, 1),
                //   ),
                //   child: Row(
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //       children: [
                //         Container(
                //           child: Image(
                //             image: NetworkImage(
                //                 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSg0vrG-ae0OKOL35X3iloBGnAO5ehDPhNNcA&usqp=CAU'),
                //           ),
                //         ),
                //         Expanded(
                //           child: Container(
                //             alignment: Alignment.center,
                //             child: Text(
                //               "Confused",
                //               textAlign: TextAlign.center,
                //               style: TextStyle(
                //                 fontSize: 20,
                //                 fontWeight: FontWeight.bold,
                //                 fontFamily: 'Poppins',
                //               ),
                //             ),
                //           ),
                //         ),
                //       ]),
                // ),
                // Container(
                //   height: getProportionateScreenHeight(130),
                //   width: getProportionateScreenWidth(350),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(20),
                //     color: Color.fromRGBO(68, 64, 77, 1),
                //   ),
                //   child: Row(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //       children: [
                //         Container(
                //           child: Image(
                //             image: NetworkImage(
                //                 'https://www.whatspaper.com/wp-content/uploads/2022/01/hd-tom-and-jerry-wallpaper-whatspaper-1.webp'),
                //           ),
                //         ),
                //         Expanded(
                //           child: Container(
                //             alignment: Alignment.center,
                //             child: Text(
                //               "Happy",
                //               textAlign: TextAlign.center,
                //               style: TextStyle(
                //                 fontSize: 20,
                //                 fontWeight: FontWeight.bold,
                //                 fontFamily: 'Poppins',
                //               ),
                //             ),
                //           ),
                //         ),
                //       ]),
                // ),
                // Container(
                //   height: getProportionateScreenHeight(130),
                //   width: getProportionateScreenWidth(350),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(20),
                //     color: Color.fromRGBO(68, 64, 77, 1),
                //   ),
                //   child: Row(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //       children: [
                //         Container(
                //           child: Image(
                //             image: NetworkImage(
                //                 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF3hrxPLPNdYE1YfzBvFDuzjzcShpN1PuPcA&usqp=CAU'),
                //           ),
                //         ),
                //         Expanded(
                //           child: Container(
                //             alignment: Alignment.center,
                //             child: Text(
                //               "Sad",
                //               textAlign: TextAlign.center,
                //               style: TextStyle(
                //                 fontSize: 20,
                //                 fontWeight: FontWeight.bold,
                //                 fontFamily: 'Poppins',
                //               ),
                //             ),
                //           ),
                //         ),
                //       ]),
                // ),
              ],
            ),
          )),
    );
  }
}
