import 'package:canteen_system/helper/enums.dart';
import 'package:canteen_system/models/Products.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductProvider with ChangeNotifier {
  bool isLoading = false;
  List<ProductModel> _products = [];
  final _firestore = FirebaseFirestore.instance;

  List<ProductModel> get products => _products;

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

  Future<void> fetchAllProducts() async {
    if (isLoading == false) {
      _products.clear();
      isLoading = true;
      notifyListeners();

      await _firestore.collection('products').get().then((value) {
        for (var item in value.docs) {
          var eachProduct = ProductModel.fromMap(item.data());

          _products.add(eachProduct);
        }
        isLoading = false;
        notifyListeners();
      }).catchError((e) {
        print("Error in fetchin products from firestore $e ");
      });

      isLoading = false;
      notifyListeners();
    }
  }

  Future<List<ProductModel>> fetchCategoriesProduct(Categories category) async {
    List<ProductModel> products = [];
    isLoading = true;
    notifyListeners();

    for (ProductModel productModel in _products) {
      if (productModel.category == category) {
        products.add(productModel);
      }
    }

    isLoading = false;
    notifyListeners();

    return products;
  }
}
