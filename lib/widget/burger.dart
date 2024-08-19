import 'package:flutter/material.dart';
import 'package:flutter_application_1/const/color.dart';

class Burger extends StatelessWidget {
  const Burger({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          elevation: 4,
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
          child: ListTile(
            leading: SizedBox(
              height: 100,
              width: 100,
              child: Badge(
                  alignment: Alignment.topLeft,
                  backgroundColor: const Color.fromARGB(0, 244, 67, 54),
                  label: const Icon(color: Colors.red, Icons.favorite_border),
                  child: Image.asset("assets/burger.png")),
            ),
            title: const Text("Cheese Burger"),
            subtitle: Column(
              children: [
                const Text("Bacon Cheeseburger"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(color: orange, Icons.star),
                    Text(style: TextStyle(color: orange), "5.0")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                        style: TextStyle(fontWeight: FontWeight.bold),
                        "AED 55.9"),
                    Container(
                        color: orange,
                        child: const Icon(color: Colors.white, Icons.add))
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
