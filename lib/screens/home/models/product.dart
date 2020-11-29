import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price,reduction;
  final bool  isPopular;
  bool isFavourite;

  Product({
    @required this.id,
    @required this.images,
    @required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.price,
     this.reduction,
    @required this.description,
  });
}
List<Product> favProducts=[

 
];

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/wireless_earphone.png",
      "assets/images/bagback_lap.png",
      "assets/images/apple_watch.png",
      
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Wirelless earphone",
    price: 16.74,
    reduction: 16,
    description: description,
    rating: 4.8,
    
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/bagback_lap.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Backpack laptop",
    price: 50.5,
    description: description,
    reduction: 0,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/apple_watch.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Apple new watch 2020",
    price: 81.55,
    reduction: 40,
    description: description,
    rating: 4.1,
    
    isPopular: true,
  ),
 
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
