import 'package:canteen_system/helper/enums.dart';

class ProductModel {
  final String pId;
  final String imageUrl;
  final double mrp;
  final String name;
  final String brand;
  final Categories category;
  final int ratings;
  final bool isCustomisable;
  final List<num> prices;
  final List<String> titles;
  final String customisableTitle;

  ProductModel(
      {required this.pId,
      required this.imageUrl,
      required this.mrp,
      required this.name,
      required this.brand,
      required this.category,
      required this.ratings,
      required this.customisableTitle,
      required this.isCustomisable,
      required this.prices,
      required this.titles});

  Map<String, dynamic> toMap() {
    return {
      'pId': pId,
      'imageUrl': imageUrl,
      'mrp': mrp,
      'name': name,
      'brand': brand,
      'category': category.name,
      'ratings': ratings,
      'isCustomisable': isCustomisable,
      'customisableTitle': customisableTitle,
      'prices': prices,
      'titles': titles
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    Categories category =
        Categories.values.firstWhere((e) => e.name == map['category']);
    return ProductModel(
        pId: map['pId'],
        name: map['name'],
        mrp: map['mrp'].toDouble(),
        imageUrl: map['imageUrl'],
        brand: map['brand'],
        category: category,
        ratings: map['ratings'],
        isCustomisable: map['isCustomisable'],
        prices: map['prices'].cast<num>(),
        customisableTitle: map['customisableTitle'],
        titles: map['titles'].cast<String>());
  }
}
