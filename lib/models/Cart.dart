import 'package:canteen_system/models/Products.dart';
import 'package:flutter/material.dart';

class CartItem {
  final ProductModel product;
  final int quantity;

  final String cId;
  final int choosenCustomisation;

  CartItem(
      {required this.product,
      required this.quantity,
      required this.cId,
      required this.choosenCustomisation});

  Map<String, dynamic> toMap() {
    return {
      'cId': cId,
      'quantity': quantity,
      'choosenCustomisation': choosenCustomisation,
      'product': product.pId
    };
  }

  factory CartItem.fromMap(
      Map<String, dynamic> map, ProductModel productModel) {
    return CartItem(
        product: productModel,
        quantity: map['quantity'],
        cId: map['cId'],
        choosenCustomisation: map['choosenCustomisation']);
  }

  Map<String, dynamic> toMapforOrder() {
    return {
      'cId': cId,
      'quantity': quantity,
      'choosenCustomisation': choosenCustomisation,
      'product': product.toMap()
    };
  }

  factory CartItem.fromMapfromOrder(Map<String, dynamic> map) {
    return CartItem(
        product: ProductModel.fromMap(map['product']),
        quantity: map['quantity'],
        cId: map['cId'],
        choosenCustomisation: map['choosenCustomisation']);
  }
}
