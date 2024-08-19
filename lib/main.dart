import 'package:flutter/material.dart';
import 'package:restaurant_menu_app/src/restaurant_menu_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: RestaurantScreen());
  }
}
