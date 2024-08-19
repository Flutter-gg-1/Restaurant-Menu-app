import 'package:flutter/material.dart';

class BottomDialouge extends StatelessWidget {
  static List<String> listOfFood = [
    'White Rice',
    'Pizza Margherita',
    'Cheese Burger',
    'Coca Cola',
    'Cupcake Strawberry'
  ];
  final int index;
  const BottomDialouge({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 349,
        height: 500,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(251, 98, 54, 1),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35.81),
                topRight: Radius.circular(35.81))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 17, vertical: 13),
              child: Text(
                'Coupons',
                style: TextStyle(fontSize: 19.94, color: Colors.white),
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    listOfFood[index],
                    style: const TextStyle(fontSize: 29.91, color: Colors.white),
                  ),
                  const Text(
                    'ID',
                    style: TextStyle(fontSize: 14.96, color: Colors.white),
                  ),
                  const Text(
                    'C13579246810',
                    style: TextStyle(fontSize: 17.45, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 45,
                  )
                ],
              ),
            ),
            Center(
              child: Image.asset('assets/images/code.png'),
            ),
          ],
        ));
  }
}
