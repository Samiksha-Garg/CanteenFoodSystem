import 'package:canteen_system/components/custom_app_bar.dart';
import 'package:canteen_system/components/custom_navigation_bar.dart';
import 'package:canteen_system/helper/constants.dart';
import 'package:canteen_system/helper/size_config.dart';
import 'package:canteen_system/models/Cart.dart';
import 'package:canteen_system/screens/OrderSummary/Components/bill_details.dart';
import 'package:canteen_system/screens/OrderSummary/Components/order_details.dart';
import 'package:canteen_system/screens/OrderSummary/Components/order_tile.dart';
import 'package:canteen_system/screens/cartScreen/components/cart_tile.dart';
import 'package:canteen_system/screens/cartScreen/components/place_order_card.dart';
import 'package:flutter/material.dart';

import '../../components/custom_button.dart';
import 'package:canteen_system/screens/complaint_page/Components/dropdown.dart';
import 'package:canteen_system/screens/complaint_page/Components/textbox.dart';

void main() {
  runApp(const complaintPage());
}

class complaintPage extends StatelessWidget {
  const complaintPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromRGBO(48, 46, 59, 1),
          body: Center(
              child: Column(children: <Widget>[
            const SizedBox(
              width: 200.0,
              height: 30.0,
            ),
            Container(
              decoration:
                  BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Color.fromRGBO(48,46,59, 1),),
              margin: const EdgeInsets.all(25),
              child: ElevatedButton(
                child: const Text(
                  ' REACH US',
                  style: TextStyle(fontSize: 30.0, color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(68, 64, 77, 1),
                    borderRadius: BorderRadius.circular(17)),
                width: 343,
                child: Column(children: [
                  SizedBox(
                    width: 200,
                    height: 40,
                  ),
                  const Text("Facing Any Issues?",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 20, 
                      color: Colors.white,
                      fontWeight: FontWeight.bold),),
                  const SizedBox(
                    width: 200.0,
                    height: 30.0,
                  ),
                  const DropDown(),
                  const SizedBox(
                    width: 200.0,
                    height: 30.0,
                  ),
                  Container(
                    width: 285,
                    height:30,
                    margin: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 2, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Text("  Description",
                        style: TextStyle(fontSize: 20, color: Colors.grey)),
                  ),
                  const SizedBox(
                    width: 200.0,
                    height: 20.0,
                  ),
                  Container(
                    color: Colors.white,
                    width: 282,
                    
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          labelText: 'Please Enter few lines',
                          hintText: 'Describe your issue '),
                      cursorColor: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 200.0,
                    height: 30.0,
                  ),
                  Container(
                    margin: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(68, 64, 77, 1),
                      border: Border.all(width: 2, color: Color.fromRGBO(68, 64, 77, 1)),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: ElevatedButton(
                      //color: Colors.grey,
                      
                      onPressed: () {},
                      child: const Text(
                        'SUBMIT',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          ),
                      ),
                    ),
                  ),
                ])),
            const SizedBox(
              width: 200.0,
              height: 40.0,
            ),
            Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(68, 64, 77, 1),
                    borderRadius: BorderRadius.circular(17)),
                width: 343,
                height: 150,
                child: TextBox())
          ]))),
    );
  }
}