import 'package:canteen_system/components/custom_app_bar.dart';
import 'package:canteen_system/components/custom_navigation_bar.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/models/Cart.dart';
import 'package:canteen_system/screens/cartScreen/components/cart_tile.dart';
import 'package:canteen_system/screens/cartScreen/components/place_order_card.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';


class packed extends StatelessWidget {
  const packed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
          title: Text('Packed Food'),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(48, 46, 59, 1)),
      bottomNavigationBar: const CustomBottomNavBar(),
     
    );
  }
}
