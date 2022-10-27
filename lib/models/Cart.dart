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
  
  CartItem.fromMap(Map<dynamic,dynamic> res)
  : product = res["product"],
  price=res["price"],
  quantity=res["quantity"],
  image=res["image"];

  Map<String, Object?> toMap(){
    return{
      "product":product,
      "price":price,
      "quantity":quantity,
      "image":image,

    }
  }
}
