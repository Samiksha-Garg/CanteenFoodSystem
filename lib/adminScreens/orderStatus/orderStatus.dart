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

class orderStatus extends StatelessWidget {
  const orderStatus({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(48, 46, 59, 1),
      appBar: customAppBar("Order Status"),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(30, 30, 42, 1),
                    borderRadius: BorderRadius.circular(10)),
                width: getProportionateScreenWidth(300),
                height: getProportionateScreenHeight(700),
                child: Column(
                  children: [
                    Text(
                      "Order Details",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        fontFamily: "Poppins",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(68, 64, 77, 1),
                              borderRadius: BorderRadius.circular(17)),
                          width: getProportionateScreenWidth(280),
                          height: getProportionateScreenHeight(280),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Order ID",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    Text(
                                      "IGDTUW00057",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        fontFamily: "Poppins",
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Name",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    Text(
                                      "Aastha Pinhatiya",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        fontFamily: "Poppins",
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Time",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    Text(
                                      " Placed yesterday,1.01pm",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        fontFamily: "Poppins",
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Mode of Payment",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    Text(
                                      "Cash on Delivery",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        fontFamily: "Poppins",
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Amount",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    Text(
                                      "Rs. 340",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        fontFamily: "Poppins",
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ),
                    
                    Column(
                      children: [
                        Text(
                          "Items",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            fontFamily: "Poppins",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: 
                          Container(
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(68, 64, 77, 1),
                                  borderRadius: BorderRadius.circular(17)),
                              width: getProportionateScreenWidth(280),
                              height: getProportionateScreenHeight(100),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        
                                        // Image.network("https://www.pexels.com/photo/close-up-photo-of-burger-1639562/",
                                        // height: 5,
                                        // width:5),
                                        Text(
                                          "Chicken Extra Spicy Burger",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            fontFamily: "Poppins",
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],)
                            
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container( 
                          decoration: BoxDecoration(
                                      color: Color.fromRGBO(68, 64, 77, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  width: getProportionateScreenWidth(240),
                                  height: getProportionateScreenHeight(40),
                          child:Center(
                            child: Text("Ready to Deliver",
                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14,
                                                fontFamily: "Poppins",
                                              ),
                            ),
                          )),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container( 
                          decoration: BoxDecoration(
                                      color: Color.fromRGBO(68, 64, 77, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  width: getProportionateScreenWidth(240),
                                  height: getProportionateScreenHeight(40),
                          child:Center(
                            child: Text("Cancel Order",
                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14,
                                                fontFamily: "Poppins",
                                              ),
                            ),
                          )),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container( 
                          decoration: BoxDecoration(
                                      color: Color.fromRGBO(68, 64, 77, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  width: getProportionateScreenWidth(240),
                                  height: getProportionateScreenHeight(40),
                          child:Center(
                            child: Text("In-process",
                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14,
                                                fontFamily: "Poppins",
                                              ),
                            ),
                          )),
                      ),
                    )
            ]),
          
          ),
        ),
      
      ),

    ));
  }
}
