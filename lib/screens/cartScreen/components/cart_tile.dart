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
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(15),
            vertical: getProportionateScreenHeight(10)),
        width: double.infinity,
        decoration: BoxDecoration(
            color: kPrimaryLightColor, borderRadius: BorderRadius.circular(20)),
        child: SizedBox(
          height: getProportionateScreenHeight(90),
          child: Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(80),
                  width: getProportionateScreenHeight(80),
                  child: Image.asset(
                    picture,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(10),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            title,
                            style: kHeadingTextStyle,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(10)),
                          child: Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.grey,
                                      shape: const CircleBorder(),
                                      padding: EdgeInsets.all(
                                          getProportionateScreenWidth(2)),
                                    ),
                                    child: Expanded(
                                      child: Text(
                                        '-',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize:
                                                getProportionateScreenWidth(20),
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  qty,
                                  style: kHeadingTextStyle,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: kSecondaryColor,
                                      shape: const CircleBorder(),
                                      padding: EdgeInsets.all(
                                          getProportionateScreenWidth(2)),
                                    ),
                                    child: Text(
                                      '+',
                                      style: TextStyle(
                                          fontSize:
                                              getProportionateScreenWidth(20),
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(10),
                ),
                Text(
                  '₹ ' + price,
                  style: kHeadingTextStyle,
                )
              ],
            ),
          ),
        ));
  }
}

// Image.asset(
//               "assets/images/Pasta.jpeg",
//               fit: BoxFit.fill,
//             ),
