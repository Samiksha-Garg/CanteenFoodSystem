import 'package:canteen_system/helper/enums.dart';
import 'package:canteen_system/models/Products.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductProvider with ChangeNotifier {
  bool isLoading = true;
  List<ProductModel> products = [];
  final _firestore = FirebaseFirestore.instance;

  // Future<void> addToDb() async {
  //   ProductModel productModel = ProductModel(
  //       pId: "",
  //       imageUrl:
  //           "https://media-cldnry.s-nbcnews.com/image/upload/newscms/2019_21/2870431/190524-classic-american-cheeseburger-ew-207p.jpg",
  //       mrp: 60,
  //       name: "Burger",
  //       brand: "IGDTUW",
  //       category: Categories.CookedFood);
  //   await _firestore.collection('products').doc().set(productModel.toMap());
  // }
}
