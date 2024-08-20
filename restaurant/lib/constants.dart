import 'package:flutter/material.dart';

extension C on Color {
  static const orange = Color(0xFFFB6237);
}

extension MyTextStyle on TextStyle {
  static TextStyle tabStyle({
    double size = 14,
    Color color = Colors.white,
  }) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: size,
      color: color,
    );
  }
}
