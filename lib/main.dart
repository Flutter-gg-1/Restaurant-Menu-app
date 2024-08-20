import 'package:flutter/material.dart';
import 'package:restrant/src/first_screan.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Bootom(),
    );
  }
}
