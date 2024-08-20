
import 'package:flutter/material.dart';
import 'package:restaurant_menu_app/widget/foodoption.dart';

class FoodView extends StatelessWidget {
  const FoodView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TabBarView(children: [
      FoodOption(
        title: 'White Rice',
        subtitle: 'Basmati rice with Vegetable',
        imagePath: 'assest/image/rz.png',
        price: '45',
        rate: '4.5',
      ),
      FoodOption(
        title: 'Pizza Margherita',
        subtitle: 'Pizza Margherita Vegetarian',
        imagePath: 'assest/image/pizza.png',
        price: '55.5',
        rate: '5.0',
      ),
      FoodOption(
        title: 'Cheese Burger',
        subtitle: 'Bacon Cheeseburger',
        imagePath: 'assest/image/burger.png',
        price: '55.9',
        rate: '5.0',
      ),
      FoodOption(
        title: 'Coca Cola',
        subtitle: 'Can Coke',
        imagePath: 'assest/image/cola.png',
        price: '3.9',
        rate: '5.0',
      ),
      FoodOption(
        title: 'Cupcake Strawberry ',
        subtitle: 'Brown and Pink Dessert',
        imagePath: 'assest/image/cake.png',
        price: '10.9',
        rate: '5.0',
      ),
    ]);
  }
}
