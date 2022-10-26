import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/models/Products.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../components/loading_bar.dart';
import '../../helper/size_config.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.product}) : super(key: key);
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: kPrimaryLightColor, borderRadius: BorderRadius.circular(15)),
        child: Padding(
            padding: EdgeInsets.only(
                left: getProportionateScreenWidth(10),
                right: getProportionateScreenWidth(10)),
            child: InkWell(
              onTap: () {},
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                        decoration: BoxDecoration(
                          color: kPrimaryLightColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Hero(
                          // tag: product.pId,
                          tag: UniqueKey(),
                          child: CachedNetworkImage(
                            fit: BoxFit.fill,
                            imageUrl: product.imageUrl,
                            placeholder: (context, url) => Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: getProportionateScreenWidth(20)),
                              decoration: BoxDecoration(
                                // color: Color(0xFF4A3298),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child: MyLoadingBar(
                                isLoading: true,
                                child: Container(),
                              )),
                            ),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                          // Image.network(product.imageUrl[0]),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      product.name,
                      style: TextStyle(color: kTextColor),
                      maxLines: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      // textBaseline: TextBaseline.alphabetic,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "₹${product.mrp}/-",
                              style: TextStyle(
                                fontSize: getProportionateScreenWidth(18),
                                fontWeight: FontWeight.w600,
                                color: kTextColor,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                            padding: EdgeInsets.only(
                                bottom: 3,
                                right: getProportionateScreenWidth(5)),
                            constraints: BoxConstraints(),
                            icon: Icon(
                              Icons.shopping_bag_outlined,
                              color: kTextColor,
                            ),
                            splashColor: kPrimaryColor.withOpacity(0.40),
                            highlightColor: kTextColor,
                            onPressed: () {
                              // Provider.of<Cart>(context, listen: false)
                              //     .addToCart(product, authProvider.user.uid);
                              // ScaffoldMessenger.of(context).hideCurrentSnackBar();
                              // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              //   content: Text('Item Added to Cart'),
                              //   duration: Duration(seconds: 1),
                              // ));
                            })
                      ],
                    ),
                  ]),
            )));
  }
}
