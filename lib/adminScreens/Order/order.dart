import 'package:canteen_system/components/custom_app_bar.dart';
import 'package:canteen_system/components/custom_navigation_bar.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/models/Cart.dart';
import 'package:canteen_system/screens/cartScreen/components/cart_tile.dart';
import 'package:canteen_system/screens/cartScreen/components/place_order_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../../components/custom_button.dart';
class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Color.fromRGBO(48, 46, 59, 1),
      appBar: customAppBar("Orders"),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: getProportionateScreenHeight(50),
            left: getProportionateScreenWidth(20.0),
            right: getProportionateScreenWidth(20.0),
            bottom: getProportionateScreenHeight(15.0),
          ),
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(30, 30, 42, 1),
                borderRadius: BorderRadius.circular(17)),
            width: getProportionateScreenWidth(500),
            height: getProportionateScreenHeight(325),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(
                    left: getProportionateScreenWidth(15),
                    top: getProportionateScreenHeight(15),
                    right: getProportionateScreenWidth(15),
                    bottom: getProportionateScreenHeight(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        "Order Id",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "IGDTUW00057",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: MyStatefulWidget(),
                      ),
                      Container(
                        child: Text(
                          "Ready To Deliver",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: MyStatefulWidget(),
                      ),
                      Container(
                        child: Text(
                          "Cancel Order",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        child: MyStatefulWidget(),
                      ),
                      SizedBox(
                        height: getProportionateScreenWidth(20),
                      ),
                      Container(
                        child: Text(
                          "Ready To Deliver",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    
                    bottom: getProportionateScreenHeight(5)),
                child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(68, 64, 77, 1),
                        borderRadius: BorderRadius.circular(5)),
                    width: getProportionateScreenWidth(240),
                    height: getProportionateScreenHeight(40),
                    child: Center(
                      child: Text("View Order Summary",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Poppins",
                          )),
                    )),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.white;
    }

    return Checkbox(
      checkColor: Colors.black,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
