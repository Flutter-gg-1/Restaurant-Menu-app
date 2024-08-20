import 'package:flutter/material.dart';
import 'model/item.dart';

class MockData {
  static List<Item> items = [
    Item(
      name: 'White Rice',
      description: 'Basmati rice with Vegetable',
      rating: 4.5,
      price: 45,
      img: Image.asset(
        'assets/whiteRice.png',
        fit: BoxFit.contain,
      ),
    ),
    Item(
      name: 'Pizza Margherita',
      description: 'Pizza Margherita Vegetarian',
      rating: 5.0,
      price: 55.9,
      img: Image.asset(
        'assets/pizza.png',
        fit: BoxFit.contain,
      ),
    ),
    Item(
      name: 'Cheese Burger',
      description: 'Bacon Cheeseburger',
      rating: 5.0,
      price: 55.9,
      img: Image.asset(
        'assets/burger.png',
        fit: BoxFit.contain,
      ),
    ),
    Item(
      name: 'Coca Cola',
      description: 'Can Coke',
      rating: 5.0,
      price: 3.9,
      img: Image.asset(
        'assets/pepsi.png',
        fit: BoxFit.contain,
      ),
    ),
    Item(
      name: 'Cupcake Strawberry',
      description: 'Brown and Pink Dessert',
      rating: 5.0,
      price: 10.9,
      img: Image.asset(
        'assets/cake.png',
        fit: BoxFit.contain,
      ),
    ),
  ];
}
