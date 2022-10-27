import 'package:canteen_system/helper/enums.dart';
import 'package:canteen_system/providers/auth_service.dart';
import 'package:canteen_system/providers/bottom_navigation_bar.dart';
import 'package:canteen_system/providers/product_provider.dart';
import 'package:canteen_system/screens/OrderSummary/Components/order_details.dart';
import 'package:canteen_system/screens/complaint_page/Components/dropdown.dart';
import 'package:canteen_system/screens/edit_details/edit_details.dart';
import 'package:canteen_system/screens/homeScreen/home_screen.dart';
import 'package:canteen_system/screens/user/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/src/consumer.dart';
import 'package:provider/src/provider.dart';

class LandingHomeScreen extends StatefulWidget {
  const LandingHomeScreen({Key? key}) : super(key: key);

  @override
  State<LandingHomeScreen> createState() => _LandingHomeScreenState();
}

class _LandingHomeScreenState extends State<LandingHomeScreen> {
  getMenuPage(MenuState menuState) {
    switch (menuState) {
      case MenuState.Home:
        return const Home();

      case MenuState.Order:
        return const OrderDetails();

      case MenuState.Settings:
        return const User();

      default:
        return const Home();
    }
  }

  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      fetch();
    });
    super.initState();
  }

  void fetch() {
    var productProvider = Provider.of<ProductProvider>(context, listen: false);

    productProvider.fetchAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<BottomNavigationBarProvider>(
        builder: (context, provider, _) {
          return getMenuPage(provider.currentPage);
        },
      ),
    );
  }
}
