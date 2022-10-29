import 'dart:math';

import 'package:canteen_system/helper/enums.dart';
import 'package:canteen_system/models/Cart.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/Orders.dart';

class OrderProvider with ChangeNotifier {
  final _firestore = FirebaseFirestore.instance;
  List<Orders> orders = [];
  bool isLoading = false;

  Future<void> addOrder(String orderId, List<CartItem> list,
      ModeOfPayment modeOfPayment, String uid) async {
    Orders _oders = Orders(
        orderId: orderId,
        cartItems: list,
        paymentStatus: PaymentState.Pending,
        razorpayId: "",
        paymentMethod: modeOfPayment,
        signature: "",
        dateTime: DateTime.now(),
        validated: false);

    await _firestore
        .collection("users")
        .doc(uid)
        .collection("orders")
        .doc(orderId)
        .set(_oders.toMap());
  }

  Future<void> updateOrderStatus(
      String orderId, String uid, PaymentState paymentState) async {
    await _firestore
        .collection("users")
        .doc(uid)
        .collection("orders")
        .doc(orderId)
        .update({"paymentStatus": paymentState.name});
  }

  Future<void> fetchAllOrders(String uid) async {
    orders.clear();
    isLoading = true;
    notifyListeners();

    await _firestore
        .collection('users')
        .doc(uid)
        .collection('orders')
        .get()
        .then((value) async {
      if (value != null) {
        for (var order in value.docs) {
          Orders eachOrder = Orders.fromMap(order.data());
          orders.add(eachOrder);
        }
      }
      orders.sort((a, b) => b.dateTime.compareTo(a.dateTime));
      print("Fetched Orders");
      notifyListeners();
    });

    isLoading = false;
    notifyListeners();
  }
}
