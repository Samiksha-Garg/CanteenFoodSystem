import 'package:canteen_system/adminScreens/Order/order.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/screens/adminItemScreen/adminItem.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../helper/constants.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kSecondaryColor,
        appBar: AppBar(
          title: Center(
            child: Text(
              "HOME",
              style: kAppBarTextStyle,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: IconButton(
                icon: Icon(Icons.notifications_outlined,
                    color: kTextColor, size: getProportionateScreenWidth(30)),
                onPressed: () {},
              ),
            ),
            // Consumer<CartProvider>(builder: (context, cartProvider, _) {
            //   return Padding(
            //     padding: const EdgeInsets.only(right: 10),
            //     child: IconButton(
            //       icon: Badge(
            //           badgeContent: Text(
            //             cartProvider.items.length.toString(),
            //             style: const TextStyle(color: Colors.black),
            //           ),
            //           animationDuration: Duration(milliseconds: 300),
            //           badgeColor: Colors.white,
            //           position: BadgePosition.topEnd(),
            //           child: Icon(Icons.shopping_cart_outlined,
            //               color: kTextColor,
            //               size: getProportionateScreenWidth(30))),
            //       onPressed: () {
            //         Navigator.push(context,
            //             MaterialPageRoute(builder: (context) => CartScreen()));
            //       },
            //     ),
            //   );
            // }),
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(getProportionateScreenWidth(5)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                constraints: BoxConstraints(
                    minHeight: getProportionateScreenHeight(150)),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/WhatsApp_Image_2022-09-03_at_21.34 1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              SizedBox(
                height: getProportionateScreenHeight(5),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderScreen(),
                        ));
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(10),
                        vertical: getProportionateScreenHeight(20)),
                    decoration: BoxDecoration(
                      color: Color(0xffD7D7FB),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Orders",
                      textAlign: TextAlign.center,
                      style: kHeadingTextStyle.copyWith(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(35)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AdminItemScreen()),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(10),
                        vertical: getProportionateScreenHeight(20)),
                    decoration: BoxDecoration(
                      color: Color(0xff5A6BEA),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Items",
                      textAlign: TextAlign.center,
                      style: kHeadingTextStyle.copyWith(
                          color: Colors.black,
                          fontSize: getProportionateScreenWidth(35)),
                    ),
                  ),
                ),
              ),
              // Text(
              //   'CATEGORIES',
              //   style: TextStyle(
              //     color: Colors.white,
              //     letterSpacing: 2.0,
              //     fontSize: getProportionateScreenWidth(24),
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // InkWell(
              //   onTap: () async {
              //     List<ProductModel> products = await productProvider
              //         .fetchCategoriesProduct(Categories.Beverages);
              //     // ignore: use_build_context_synchronously
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => CategoryScreen(
              //                   category: Categories.Beverages,
              //                   products: products,
              //                 )));
              //   },
              //   child: Container(
              //     height: getProportionateScreenHeight(100),
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //       color: Colors.deepPurple[100],
              //       borderRadius: BorderRadius.circular(15),
              //       image: const DecorationImage(
              //         image: AssetImage('assets/images/Group 2.png'),
              //         fit: BoxFit.fill,
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: getProportionateScreenHeight(20),
              // ),
              // InkWell(
              //   onTap: () async {
              //     List<ProductModel> products = await productProvider
              //         .fetchCategoriesProduct(Categories.PackedFood);
              //     // ignore: use_build_context_synchronously
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => CategoryScreen(
              //                   category: Categories.PackedFood,
              //                   products: products,
              //                 )));
              //   },
              //   child: Container(
              //     height: getProportionateScreenHeight(100),
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //       color: Colors.deepPurple[400],
              //       borderRadius: BorderRadius.circular(15),
              //       image: const DecorationImage(
              //         image: AssetImage('assets/images/Group 3.png'),
              //         fit: BoxFit.fill,
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: getProportionateScreenHeight(20),
              // ),
              // InkWell(
              //   onTap: () async {
              //     List<ProductModel> products = await productProvider
              //         .fetchCategoriesProduct(Categories.CookedFood);
              //     // ignore: use_build_context_synchronously
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => CategoryScreen(
              //                   category: Categories.CookedFood,
              //                   products: products,
              //                 )));
              //   },
              //   child: Container(
              //     height: getProportionateScreenHeight(100),
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //       color: Colors.deepPurple[900],
              //       borderRadius: BorderRadius.circular(15),
              //       image: const DecorationImage(
              //         image: AssetImage('assets/images/Group 4.png'),
              //         fit: BoxFit.fill,
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: getProportionateScreenHeight(20),
              // )
            ],
          ),
        )));

    // bottomNavigationBar: const CustomBottomNavBar());
  }
}
