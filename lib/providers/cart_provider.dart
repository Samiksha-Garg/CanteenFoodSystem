import 'package:canteen_system/models/Cart.dart';
import 'package:canteen_system/models/Products.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CartProvider with ChangeNotifier {
  final _firestore = FirebaseFirestore.instance;
  bool isLoading = false;
  Map<String, CartItem> _cartItems = {};

  Map<String, CartItem> get items {
    return {..._cartItems};
  }

  Future<void> addToCart(ProductModel productModel, String uId,
      {int quantity = 1, int choosenIndex = 0}) async {
    isLoading = true;
    notifyListeners();
    String cId = productModel.pId;

    if (productModel.isCustomisable) {
      cId = cId +
          productModel.titles[choosenIndex] +
          productModel.prices[choosenIndex].toString();
    } else {
      cId = cId + productModel.mrp.toString();
    }
    if (_cartItems.containsKey(cId)) {
      _cartItems.update(
          cId,
          (existingCartItem) => CartItem(
                choosenCustomisation: choosenIndex,
                cId: existingCartItem.cId,
                product: productModel,
                quantity: existingCartItem.quantity + quantity,
              ));
    } else {
      _cartItems.putIfAbsent(
          cId,
          () => CartItem(
                choosenCustomisation: choosenIndex,
                cId: cId,
                product: productModel,
                quantity: quantity,
              ));
    }

    await updateDB(uId);
    isLoading = false;
    notifyListeners();
  }

  Future<void> increaseQty(String cId, String uId) async {
    isLoading = true;
    notifyListeners();
    _cartItems.update(
        cId,
        (existingCartItem) => CartItem(
            cId: existingCartItem.cId,
            product: existingCartItem.product,
            quantity: existingCartItem.quantity + 1,
            choosenCustomisation: existingCartItem.choosenCustomisation));
    await updateDB(uId);
    isLoading = false;
    notifyListeners();
  }

  Future<void> decreaseQty(String cId, String uId) async {
    isLoading = true;
    notifyListeners();
    _cartItems.update(
        cId,
        (existingCartItem) => CartItem(
            cId: existingCartItem.cId,
            product: existingCartItem.product,
            quantity: existingCartItem.quantity - 1,
            choosenCustomisation: existingCartItem.choosenCustomisation));
    await updateDB(uId);
    isLoading = false;
    notifyListeners();
  }

  Future<void> removeItem(String cId, String uId) async {
    isLoading = true;
    notifyListeners();
    _cartItems.remove(cId);
    await updateDB(uId);
    isLoading = false;
    notifyListeners();
  }

  Future<void> fetchCartItems(String userId) async {
    _cartItems.clear();
    isLoading = true;
    notifyListeners();

    var docRef = _firestore.collection("carts").doc(userId);
    docRef.get().then((doc) async {
      if (!doc.exists) {
        await _firestore.collection('carts').doc(userId).set({"products": {}});
      } else {
        await _firestore.collection('carts').doc(userId).get().then((value) {
          Map<String, dynamic> map = value.data()!['products'];

          map.forEach((k, v) async {
            CartItem cartItem = CartItem.fromMap(v);
            _cartItems.putIfAbsent(k, () => cartItem);

            notifyListeners();
          });
        });
      }
    }).catchError((error) => {print("Error getting document:" + error)});
    isLoading = false;

    notifyListeners();
  }

  Future<void> updateDB(String uid) async {
    Map<String, Map<String, dynamic>> cartItems = {};

    for (String mapKeys in _cartItems.keys) {
      cartItems.putIfAbsent(mapKeys, () => _cartItems[mapKeys]!.toMap());
    }
    return await _firestore
        .collection('carts')
        .doc(uid)
        .update({"products": cartItems});
  }
}
