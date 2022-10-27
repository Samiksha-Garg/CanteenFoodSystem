import 'package:canteen_system/components/custom_app_bar.dart';
import 'package:canteen_system/components/custom_button.dart';
import 'package:canteen_system/components/custom_navigation_bar.dart';
import 'package:canteen_system/components/loading_bar.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/models/Products.dart';
import 'package:canteen_system/providers/cart_provider.dart';
import 'package:canteen_system/screens/itemScreen/components/ratings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:provider/src/provider.dart';

import '../../helper/size_config.dart';

Future<dynamic> showItemSheet(BuildContext context, ProductModel productModel) {
  return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      builder: (context) {
        return ItemWidget(
          productModel: productModel,
        );
      });
}

class ItemWidget extends StatefulWidget {
  const ItemWidget({Key? key, required this.productModel}) : super(key: key);

  final ProductModel productModel;

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  int selectedValue = 0;
  int qty = 1;

  @override
  Widget build(BuildContext context) {
    List<Widget> generateRadioList(List<String> titles) {
      List<Widget> list = [];

      for (int i = 0; i < titles.length; i++) {
        list.add(Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  height: getProportionateScreenWidth(20),
                  width: getProportionateScreenWidth(20),
                  child: Radio<int>(
                    fillColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      return Colors.grey;
                    }),
                    value: i,
                    groupValue: selectedValue,
                    onChanged: (val) {
                      setState(() {
                        selectedValue = i;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(10),
                ),
                Text(" ${titles[i]}")
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(5),
            )
          ],
        ));
      }
      return list;
    }

    return Wrap(children: [
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: kPrimaryColor),
        child: Padding(
          padding: EdgeInsets.all(getProportionateScreenWidth(15)),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: getProportionateScreenWidth(15)),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios,
                        color: kTextColor,
                        size: getProportionateScreenWidth(20)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Center(
                  child: Text(
                    widget.productModel.name,
                    style: kAppBarTextStyle,
                  ),
                ),
                Ratings(
                  rating: widget.productModel.ratings,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                Center(
                    child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageBuilder: (context, imageProvider) => Container(
                    height: getProportionateScreenHeight(150),
                    width: getProportionateScreenWidth(150),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: imageProvider, fit: BoxFit.fill),
                    ),
                  ),
                  imageUrl: widget.productModel.imageUrl,
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
                  errorWidget: (context, url, error) => Icon(Icons.error),
                )),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: widget.productModel.isCustomisable
                      ? MainAxisAlignment.spaceBetween
                      : MainAxisAlignment.center,
                  children: [
                    widget.productModel.isCustomisable
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                generateRadioList(widget.productModel.titles))
                        : Container(),
                    Column(
                      children: [
                        Text(
                          "Quantity",
                          style: kHeadingTextStyle.copyWith(
                              fontWeight: FontWeight.w500),
                        ),
                        Container(
                            height: getProportionateScreenHeight(20),
                            // width: getProportionateScreenWidth(100),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(5)),
                            constraints: BoxConstraints(
                                minHeight: getProportionateScreenHeight(20),
                                minWidth: getProportionateScreenWidth(100)),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    if (qty != 1) {
                                      setState(() {
                                        qty = qty - 1;
                                      });
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      primary: Colors.grey,
                                      side: BorderSide.none
                                      // side: BorderSide(color: Colors.black, width: 1),
                                      ),
                                  child: Text(
                                    '-',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize:
                                            getProportionateScreenHeight(15),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                SizedBox(
                                  width: getProportionateScreenWidth(5),
                                ),
                                Text(
                                  qty.toString(),
                                  // style: kSubHeadingTextStyle.copyWith(
                                  //     color: Colors.black),
                                ),
                                SizedBox(
                                  width: getProportionateScreenWidth(5),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      qty = qty + 1;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      primary: Colors.grey,
                                      side: BorderSide.none
                                      // side: BorderSide(color: Colors.black, width: 1),
                                      ),
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize:
                                            getProportionateScreenHeight(15),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(50)),
                  child: CustomButton(
                      text: "Add to Cart",
                      press: () {
                        Provider.of<CartProvider>(context, listen: false)
                            .addToCart(widget.productModel, quantity: qty);
                        Navigator.pop(context);
                      }),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                  color: kSecondaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total : ",
                        style: kAppBarTextStyle,
                      ),
                      Text(widget.productModel.isCustomisable
                          ?
                          // "₹ ${widget.productModel.mrp * qty}/-"
                          "₹ ${widget.productModel.prices[selectedValue] * qty}/-"
                          : "₹ ${widget.productModel.mrp * qty}/-")
                    ],
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
              ]),
        ),
      ),
    ]);
  }
}
