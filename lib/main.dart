import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/helper/theme.dart';
import 'package:canteen_system/screens/OrderSummary/order_summary.dart';
import 'package:canteen_system/screens/authenticalScreen/login_screen.dart';
import 'package:canteen_system/screens/authenticalScreen/sign_up_screen.dart';
import 'package:canteen_system/screens/cartScreen/cart_screen.dart';
import 'package:canteen_system/screens/failureScreen/failure_screen.dart';
import 'package:canteen_system/screens/itemScreen/item_screen.dart';
import 'package:canteen_system/screens/statusScreen/status_screen.dart';
import 'package:canteen_system/screens/complaint_page/complaint_page.dart';
import 'package:canteen_system/screens/payment/payment.dart';
import 'package:canteen_system/screens/user/user.dart';
import 'package:canteen_system/screens/homeScreen/home_screen.dart';
import 'package:canteen_system/screens/edit_details/edit_details.dart';
import 'package:canteen_system/screens/mood_page/mood_page.dart';
import 'package:canteen_system/screens/categoryScreens/beverages_screen.dart';
import 'package:canteen_system/screens/categoryScreens/cooked_food.dart';
import 'package:canteen_system/screens/categoryScreens/packaged_food_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme(),
        home: const PackagedFoodScreen()
        // const BeveragesScreen()
        // const CookedFoodScreen()
        // const MoodPage(),
        // const LoginPage()
        // const Signin()
        // const EditDetails()
        // const Home()
        // const User()
        // const Payment()
        // const ComplaintPage()
        // const Order_Summary()
        // const OrderStatus()
        // const FailureScreen()
        // const CartScreen()
        //const ItemScreen()
        //const CartScreen(),
        );
  }
}
