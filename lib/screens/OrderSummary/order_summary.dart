import 'package:canteen_system/components/custom_app_bar.dart';
import 'package:canteen_system/components/custom_navigation_bar.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/models/Cart.dart';
import 'package:canteen_system/screens/cartScreen/components/cart_tile.dart';
import 'package:canteen_system/screens/cartScreen/components/place_order_card.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'Components/cancel_order_card.dart';

class Order_Summary extends StatelessWidget {
  const Order_Summary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
          title: Text('Orders'),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(48, 46, 59, 1)),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Center(
            child: Container(
              width: 300.0,
              height: 550.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(30, 30, 42, 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 20.0,
                    width: 230.0,
                    child: Text(
                      '1 item in this order',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                  Container(
                      height: 90.0,
                      width: 230.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(68, 64, 77, 1),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            child: Image.asset(
                              "assets/images/burger.jpeg",
                              height:getProportionateScreenHeight(30),
                              width:getProportionateScreenWidth(30),
                              
                              fit: BoxFit.fill,
                              ),
                          
                          ),
                          Container(
                            child: Text(
                              "Super spicy chicken burger",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          
                        ],
                      )
                      ),
                  Container(
                    height: 130,
                    width: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(68, 64, 77, 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                      Container(
                        child: Text(
                          "Bill Details",
                          textAlign: TextAlign.left,
                          style:TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                          )

                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          
                          children: [
                            Container(
                              
                              child:Text(
                                "MRP",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                                
                              

                            ),
                            Container(
                              child: Text(
                                "104.0",
                                textAlign: TextAlign.end,
                                style:TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                )
                              ),
                              

                            ),
                            

                        ]),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          Container(
                            child: Text(
                              "Product Discount",
                              textAlign: TextAlign.start,
                              style:TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                          ),
                          Container(
                            child: Text(
                              "0.00",
                              textAlign: TextAlign.end,
                              style:TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                          )
                        ]),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Container(
                            child: Text(
                              "Bill Total",
                              textAlign: TextAlign.start,
                              style:TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                          ),
                          Container(
                            child: Text(
                              "104.0",
                              textAlign: TextAlign.end,
                              style:TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                          )
                        ]),
                        
                      )

                    ],)
                  ),
                  Container(
                    height: 130,
                    width: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(68, 64, 77, 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                      Container(
                        child: Text(
                          "Order Details",
                          textAlign: TextAlign.left,
                          style:TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold
                          )

                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          
                          children: [
                            Container(
                              
                              child:Text(
                                "Order ID",
                                textAlign: TextAlign.start,
                                style:TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                )
                              ),

                            ),
                            Container(
                              child: Text(
                                "IGDTUW0057",
                                textAlign: TextAlign.end,
                                style:TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                )
                              ),
                              

                            ),
                            

                        ]),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          Container(
                            child: Text(
                              "Payment Mode",
                              textAlign: TextAlign.start,
                              style:TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                          ),
                          Container(
                            child: Text(
                              "Cash On Delivery",
                              textAlign: TextAlign.end,
                              style:TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                          )
                        ]),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Container(
                            child: Text(
                              "Order Placed",
                              textAlign: TextAlign.start,
                              style:TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                          ),
                          Container(
                            child: Text(
                              "Placed Yesterday,1:01pm",
                              textAlign: TextAlign.end,
                              style:TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                          )
                        ]),
                        
                      )

                    ],)
                  ),
                  
                ],
              ),
            ),
          ),
          Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [CancelOrderCard()]),
          ),
        ],
      ),
    );
  }
}
