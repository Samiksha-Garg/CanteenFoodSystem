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
  //           "https://www.tastyrewards.com/sites/default/files/2021-03/Packshots_Magic_Masala.jpg",
  //       mrp: 20,
  //       name: "Magic Masala",
  //       brand: "Lays",
  //       category: Categories.PackedFood);
  //   await _firestore.collection('products').doc().set(productModel.toMap());
  // }
}
