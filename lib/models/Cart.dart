import 'package:canteen_system/models/Products.dart';
import 'package:flutter/material.dart';

class CartItem {
  final ProductModel product;
  final int quantity;
  final double price;
  final String cId;
  final int choosenCustomisation;

  CartItem(
      {required this.product,
      required this.price,
      required this.quantity,
      required this.cId,
      required this.choosenCustomisation});
}
