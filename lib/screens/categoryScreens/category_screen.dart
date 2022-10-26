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
  const CategoryScreen(
      {Key? key, required this.category, required this.products})
      : super(key: key);

  final Categories category;
  final List<ProductModel> products;

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
          padding: EdgeInsets.only(left: getProportionateScreenWidth(15)),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: getProportionateScreenWidth(15),
              mainAxisSpacing: getProportionateScreenHeight(10),
            ),
            padding: EdgeInsets.only(
                right: getProportionateScreenWidth(20),
                top: getProportionateScreenWidth(10)),
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              return CategoryItem(product: products[index]);
            },
          ),
        ));
  }
}
