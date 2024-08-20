
import 'package:flutter/material.dart';
import 'package:restaurant_menu_app/widget/food_view.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 115,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(2),
          boxShadow: kElevationToShadow[4]),
      child: const FoodView(),
    );
  }
}