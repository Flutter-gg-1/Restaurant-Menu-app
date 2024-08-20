
import 'package:flutter/material.dart';

class MenuOption extends StatelessWidget {
  const MenuOption({
    super.key,
    required this.selected,
    required this.index,
    required this.title,
  });

  final int selected, index;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 33,
      decoration: BoxDecoration(
          color: selected != index
              ? const Color(0xFFFFFFFF)
              : const Color(0xFFFB6236),
          borderRadius: BorderRadius.circular(4),
          boxShadow: kElevationToShadow[4]),
      child: Center(
          child: Text(
        title,
        style: TextStyle(
          color: selected == index
              ? const Color(0xFFFFFFFF)
              : const Color(0xFF484646),
        ),
      )),
    );
  }
}