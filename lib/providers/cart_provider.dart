import 'package:canteen_system/models/Cart.dart';
import 'package:canteen_system/models/Products.dart';
import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  bool isLoading = false;
  Map<String, CartItem> _cartItems = {};

  Map<String, CartItem> get items {
    return {..._cartItems};
  }

  Future<void> addToCart(ProductModel productModel, {int quantity = 1}) async {
    if (_cartItems.containsKey(productModel.pId)) {
      _cartItems.update(
          productModel.pId,
          (existingCartItem) => CartItem(
              product: "",
              price: 100,
              quantity: existingCartItem.quantity + quantity,
              image: ""));
    } else {
      _cartItems.putIfAbsent(
          productModel.pId,
          () =>
              CartItem(product: "", price: 100, quantity: quantity, image: ""));
    }

    notifyListeners();
  }
}
