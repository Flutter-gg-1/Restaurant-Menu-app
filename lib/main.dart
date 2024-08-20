import 'package:flutter/material.dart';
import 'package:lab2/screen/menu_screen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menu',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MenuScreen(),
    );
  }
}
