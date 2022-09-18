import 'package:canteen_system/helper/size_config.dart';
import 'package:flutter/material.dart';

import '../../../helper/constants.dart';

class ChooseCustomisation extends StatelessWidget {
  const ChooseCustomisation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              "Litres",
              style: kHeadingTextStyle.copyWith(fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                SizedBox(
                  height: getProportionateScreenWidth(20),
                  width: getProportionateScreenWidth(20),
                  child: Radio(
                    fillColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      return Colors.grey;
                    }),
                    value: "20",
                    groupValue: "qty",
                    onChanged: (val) {},
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(10),
                ),
                Text(" 20 ml")
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(5),
            ),
            Row(
              children: [
                SizedBox(
                  height: getProportionateScreenWidth(20),
                  width: getProportionateScreenWidth(20),
                  child: Radio(
                    fillColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      return Colors.grey;
                    }),
                    value: "40",
                    groupValue: "qty",
                    onChanged: (val) {},
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(10),
                ),
                Text(" 40 ml")
              ],
            ),
          ],
        ),
        Column(
          children: [
            Text(
              "Quantity",
              style: kHeadingTextStyle.copyWith(fontWeight: FontWeight.w500),
            ),
            Container(
                height: getProportionateScreenHeight(20),
                // width: getProportionateScreenWidth(100),
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(5)),
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
                      "2",
                      // style: kSubHeadingTextStyle.copyWith(
                      //     color: Colors.black),
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
        )
      ],
    );
  }
}
