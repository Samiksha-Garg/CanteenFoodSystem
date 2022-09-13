import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:flutter/material.dart';

class CartTile extends StatelessWidget {
  CartTile(
      {Key? key,
      required this.title,
      required this.qty,
      required this.price,
      required this.picture})
      : super(key: key);
  String title;
  String picture;
  String qty;
  String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: getProportionateScreenHeight(10)),
      height: getProportionateScreenHeight(130),
      width: double.infinity,
      decoration: BoxDecoration(
          color: kPrimaryLightColor, borderRadius: BorderRadius.circular(20)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: getProportionateScreenHeight(130),
                width: getProportionateScreenWidth(100),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(picture), fit: BoxFit.fill),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)))),
            SizedBox(
              width: getProportionateScreenWidth(10),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: kSubHeadingTextStyle,
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(5),
                    ),
                    Text(
                      '₹ ' + price + " /-",
                      style: kSubHeadingTextStyle,
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(5),
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
                              onPressed: () {},
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
                                    fontSize: getProportionateScreenHeight(15),
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            SizedBox(
                              width: getProportionateScreenWidth(5),
                            ),
                            Text(
                              qty,
                              style: kSubHeadingTextStyle.copyWith(
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: getProportionateScreenWidth(5),
                            ),
                            ElevatedButton(
                              onPressed: () {},
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
                                    fontSize: getProportionateScreenHeight(15),
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            )
          ]),
    );
  }
}
