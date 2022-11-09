import 'package:canteen_system/adminScreens/admin_main_screen.dart';
import 'package:canteen_system/helper/enums.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/helper/theme.dart';
import 'package:canteen_system/models/Cart.dart';
import 'package:canteen_system/models/Products.dart';
import 'package:canteen_system/providers/auth_service.dart';
import 'package:canteen_system/providers/bottom_navigation_bar.dart';
import 'package:canteen_system/providers/cart_provider.dart';
import 'package:canteen_system/providers/order_provider.dart';
import 'package:canteen_system/providers/place_order.dart';
import 'package:canteen_system/providers/product_provider.dart';
import 'package:canteen_system/providers/user_account.dart';
import 'package:canteen_system/screens/OrderSummary/success_screen.dart';
import 'package:canteen_system/screens/adminItemScreen/adminItem.dart';
import 'package:canteen_system/screens/authenticationScreen/choice_screen.dart';
import 'package:canteen_system/screens/authenticationScreen/fetching_info_screen.dart';
import 'package:canteen_system/screens/authenticationScreen/login_screen.dart';
import 'package:canteen_system/screens/authenticationScreen/sign_up_screen.dart';
import 'package:canteen_system/screens/cartScreen/cart_screen.dart';
import 'package:canteen_system/screens/complaintScreen/complaint_screen.dart';
import 'package:canteen_system/screens/failureScreen/failure_screen.dart';
import 'package:canteen_system/screens/itemScreen/item_screen.dart';
import 'package:canteen_system/screens/landingScreen/landing_home_screen.dart';
import 'package:canteen_system/screens/splashScreen/splash_screen.dart';
import 'package:canteen_system/screens/statusScreen/status_screen.dart';
import 'package:canteen_system/screens/complaint_page/complaint_page.dart';
import 'package:canteen_system/screens/payment/payment.dart';
import 'package:canteen_system/screens/user/user.dart';
import 'package:canteen_system/screens/homeScreen/home_screen.dart';
import 'package:canteen_system/screens/edit_details/edit_details.dart';
import 'package:canteen_system/screens/mood_page/mood_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/src/provider.dart';
import 'package:provider/src/change_notifier_provider.dart';
import 'package:provider/src/consumer.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Authentication>(
          create: (context) => Authentication.instance(),
        ),
        ChangeNotifierProvider<BottomNavigationBarProvider>(
          create: (context) => BottomNavigationBarProvider(),
        ),
        ChangeNotifierProvider<UserProvider>(
          create: (context) => UserProvider(),
        ),
        ChangeNotifierProvider<ProductProvider>(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider<CartProvider>(
          create: (context) => CartProvider(),
        ),
        ChangeNotifierProvider<PlaceOrder>(
          create: (context) => PlaceOrder(),
        ),
        ChangeNotifierProvider<OrderProvider>(
          create: (context) => OrderProvider(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme(),
          home: Consumer<Authentication>(
            builder: (context, auth, _) {
              SizeConfig().init(context);
              auth.setBuildContext = context;
              switch (auth.status) {
                case Status.Uninitialized:
                  return const SplashScreen();

                case Status.Authenticated:
                  return Provider.of<UserProvider>(context, listen: false)
                              .user
                              .role ==
                          "customer"
                      ? const LandingHomeScreen()
                      : AdminHomeScreen();

                case Status.Authenticating:
                  return const SplashScreen();

                case Status.Fetching:
                  return const FetchingInfo();

                case Status.Unauthenticated:
                  return const AuthChoiceScreen();
              }
            },
          )),
    );
  }
}
