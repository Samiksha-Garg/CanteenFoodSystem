import 'package:canteen_system/models/Cart.dart';
import 'package:canteen_system/models/Products.dart';
import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  bool isLoading = false;
  Map<String, CartItem> _cartItems = {};

  Map<String, CartItem> get items {
    return {..._cartItems};
  }

  Future<void> addToCart(ProductModel productModel,
      {int quantity = 1, int choosenIndex = 0}) async {
    String cId = productModel.pId;

    if (productModel.isCustomisable) {
      cId = cId + productModel.titles[choosenIndex];
    }
    if (_cartItems.containsKey(cId)) {
      _cartItems.update(
          cId,
          (existingCartItem) => CartItem(
                choosenCustomisation: choosenIndex,
                cId: existingCartItem.cId,
                product: productModel,
                price: productModel.isCustomisable
                    ? productModel.prices[choosenIndex].toDouble()
                    : productModel.mrp,
                quantity: existingCartItem.quantity + quantity,
              ));
    } else {
      _cartItems.putIfAbsent(
          cId,
          () => CartItem(
                choosenCustomisation: choosenIndex,
                cId: cId,
                product: productModel,
                price: productModel.isCustomisable
                    ? productModel.prices[choosenIndex].toDouble()
                    : productModel.mrp,
                quantity: quantity,
              ));
    }

    notifyListeners();
  }

  Future<void> increaseQty(String cId) async {
    _cartItems.update(
        cId,
        (existingCartItem) => CartItem(
            cId: existingCartItem.cId,
            product: existingCartItem.product,
            price: existingCartItem.price,
            quantity: existingCartItem.quantity + 1,
            choosenCustomisation: existingCartItem.choosenCustomisation));
    notifyListeners();
  }

  Future<void> decreaseQty(String cId) async {
    _cartItems.update(
        cId,
        (existingCartItem) => CartItem(
            cId: existingCartItem.cId,
            product: existingCartItem.product,
            price: existingCartItem.price,
            quantity: existingCartItem.quantity - 1,
            choosenCustomisation: existingCartItem.choosenCustomisation));
    notifyListeners();
  }

  Future<void> removeItem(String cId) async {
    _cartItems.remove(cId);

    notifyListeners();
  }
}
