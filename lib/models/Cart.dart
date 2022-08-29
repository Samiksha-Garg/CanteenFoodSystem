import 'package:flutter/material.dart';

class CartItem {
  final String product;
  final int quantity;
  final double price;
  final String image;

  CartItem(
      {required this.product,
      required this.price,
      required this.quantity,
      required this.image});
}
