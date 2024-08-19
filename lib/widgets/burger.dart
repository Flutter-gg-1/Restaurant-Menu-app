import 'package:flutter/material.dart';
import 'package:restaurant_challenge/widgets/my_bottom_sheet.dart';
import 'package:restaurant_challenge/widgets/show_alert.dart';

class Burger extends StatelessWidget {
  const Burger({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Container(
          height: 110,
          width: 360,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 6,
                  color: Color(0x29000000),
                ),
              ],
              borderRadius: BorderRadius.circular(2)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Image.asset("assets/heart.png"),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset("assets/burger.png"),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Cheese Burger",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text("Bacon Cheeseburger",
                        style: TextStyle(fontSize: 13)),
                    const Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xffFB6236),
                        ),
                        Text(
                          "5.0",
                          style: TextStyle(color: Color(0xffFB6236)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("AED 55.9",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const SizedBox(
                          width: 110,
                        ),
                        Image.asset("assets/add.png"),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 270,
        ),
        const MyBottomSheet(),
        const SizedBox(
          height: 20,
        ),
        const ShowAlert()
      ],
    );
  }
}
