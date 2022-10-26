import 'package:canteen_system/components/custom_app_bar.dart';
import 'package:canteen_system/components/custom_navigation_bar.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/enums.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/models/Products.dart';
import 'package:canteen_system/providers/product_provider.dart';
import 'package:canteen_system/screens/categoryScreens/category_item.dart';
import 'package:canteen_system/screens/complaint_page/Components/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key, required this.category}) : super(key: key);

  final Categories category;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: IconButton(
              icon: Icon(Icons.arrow_back,
                  color: kTextColor, size: getProportionateScreenWidth(30)),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          title: Center(
            child: Text(
              category == Categories.Beverages
                  ? "Beverages"
                  : category == Categories.CookedFood
                      ? "Cooked Food"
                      : "Packaged Food",
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
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: IconButton(
                icon: Icon(Icons.shopping_cart_outlined,
                    color: kTextColor, size: getProportionateScreenWidth(30)),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10),
                vertical: getProportionateScreenHeight(20)),
            child: GridView.count(
              childAspectRatio: 0.75,
              crossAxisCount: 2,
              crossAxisSpacing: getProportionateScreenWidth(15),
              mainAxisSpacing: getProportionateScreenHeight(10),
              children: [
                InkWell(
                    onTap: () async {
                      // Provider.of<ProductProvider>(context, listen:  false).
                    },
                    child: CategoryItem(
                      product: ProductModel(
                          pId: "",
                          imageUrl:
                              "https://media-cldnry.s-nbcnews.com/image/upload/newscms/2019_21/2870431/190524-classic-american-cheeseburger-ew-207p.jpg",
                          mrp: 60,
                          name: "Burger",
                          brand: "IGDTUW",
                          category: Categories.CookedFood),
                    )
                    // Container(
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(20),
                    //       image: DecorationImage(
                    //           image: AssetImage(
                    //             "assets/images/tile.jpg",
                    //           ),
                    //           fit: BoxFit.fill)),
                    // ),
                    ),
                InkWell(
                    onTap: () async {
                      // Provider.of<ProductProvider>(context, listen:  false).
                    },
                    child: CategoryItem(
                      product: ProductModel(
                          pId: "",
                          imageUrl:
                              "https://www.tastyrewards.com/sites/default/files/2021-03/Packshots_Magic_Masala.jpg",
                          mrp: 20,
                          name: "Magic Masala",
                          brand: "Lays",
                          category: Categories.PackedFood),
                    )
                    // Container(
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(20),
                    //       image: DecorationImage(
                    //           image: AssetImage(
                    //             "assets/images/tile.jpg",
                    //           ),
                    //           fit: BoxFit.fill)),
                    // ),
                    ),
                // Container(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       image: DecorationImage(
                //           image: AssetImage(
                //             "assets/images/tile.jpg",
                //           ),
                //           fit: BoxFit.fill)),
                // ),
                // Container(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       image: DecorationImage(
                //           image: AssetImage(
                //             "assets/images/tile.jpg",
                //           ),
                //           fit: BoxFit.fill)),
                // ),
                // Container(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       image: DecorationImage(
                //           image: AssetImage(
                //             "assets/images/tile.jpg",
                //           ),
                //           fit: BoxFit.fill)),
                // ),
                // Container(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       image: DecorationImage(
                //           image: AssetImage(
                //             "assets/images/tile.jpg",
                //           ),
                //           fit: BoxFit.fill)),
                // ),
                // Container(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       image: DecorationImage(
                //           image: AssetImage(
                //             "assets/images/tile.jpg",
                //           ),
                //           fit: BoxFit.fill)),
                // ),
                // Container(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       image: DecorationImage(
                //           image: AssetImage(
                //             "assets/images/tile.jpg",
                //           ),
                //           fit: BoxFit.fill)),
                // ),
                // Container(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       image: DecorationImage(
                //           image: AssetImage(
                //             "assets/images/tile.jpg",
                //           ),
                //           fit: BoxFit.fill)),
                // ),
              ],
            )));
  }
}
