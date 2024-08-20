import 'package:flutter/material.dart';

class TabBarContainers extends StatelessWidget {
  final String text;
  const TabBarContainers({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 33,
                  width: 64,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.transparent,
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xFF000000).withOpacity(0.5), blurRadius: 20,
                            blurStyle: BlurStyle.outer,)
                      ]),
                  child: Center(child: Text(text, style: TextStyle(fontSize: 14),)));
  }
}