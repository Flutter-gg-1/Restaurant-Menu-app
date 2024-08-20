import 'package:flutter/material.dart';

class Item {
  String name;
  String description;
  double rating;
  double price;
  Image img;

  Item({
    required this.name,
    required this.description,
    required this.rating,
    required this.price,
    required this.img,
  });
}
