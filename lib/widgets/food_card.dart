import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final Map<String, dynamic> food;
  const FoodCard({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shadowColor: const Color.fromRGBO(0, 0, 0, 0.5),
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2, top: 16),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset('assets/images/like.png')),
                ),
                Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    height: 120,
                    width: 108,
                    child: FittedBox(
                        fit: BoxFit.contain, child: Image.asset(food['image']))),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              height: 120,
              width: 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    food['name'],
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(72, 70, 70, 1)),
                  ),
                  Text(
                    food['desc'],
                    style: const TextStyle(
                        fontSize: 13,
                        fontFamily: 'Gilroy',
                        color: Color.fromRGBO(72, 70, 70, 1)),
                  ),
                  Text(
                    '\u2605 ${food['rating']}',
                    style: const TextStyle(
                        color: Color.fromRGBO(251, 98, 54, 1),
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.bold,
                        fontSize: 11),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'AED ${food['price']}',
                          style: const TextStyle(
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            'assets/images/plus.png',
                            height: 22,
                            width: 28,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
