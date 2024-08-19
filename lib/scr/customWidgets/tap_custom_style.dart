import 'package:flutter/material.dart';

class TapCustomStyle extends StatelessWidget {
  final String title;
  const TapCustomStyle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 33,
        width: 64,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  blurStyle: BlurStyle.outer)
            ]),
        child: Text(title));
  }
}
