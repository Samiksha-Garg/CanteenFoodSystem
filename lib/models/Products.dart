import 'package:canteen_system/helper/enums.dart';

class ProductModel {
  final String pId;
  final String imageUrl;
  final double mrp;
  final String name;
  final String brand;
  final Categories category;

  ProductModel(
      {required this.pId,
      required this.imageUrl,
      required this.mrp,
      required this.name,
      required this.brand,
      required this.category});

  Map<String, dynamic> toMap() {
    return {
      'pId': pId,
      'imageUrl': imageUrl,
      'mrp': mrp,
      'name': name,
      'brand': brand,
      'category': category.name
    };
  }
}
