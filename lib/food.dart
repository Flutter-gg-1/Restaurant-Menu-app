import 'package:flutter/material.dart';

class Food extends StatelessWidget {
  final String image;
  final String name;
  final String desc;
  final String rating;
  final double price;
  const Food(
      {super.key,
      required this.image,
      required this.name,
      required this.desc,
      required this.rating,
      required this.price});

  @override
  Widget build(BuildContext context) {
   return Card(
      
      color: Colors.white,
      shadowColor: Color.fromRGBO(0,0,0,0.5),
      
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
                    width: 120,
                    child: FittedBox(
                        fit: BoxFit.contain, child: Image.asset(image))),
              ],
            ),
            SizedBox(
              height: 120,
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(72, 70, 70, 1)),
                  ),
                  Text(
                    desc,
                    style: const TextStyle(
                        fontSize: 13,
                        fontFamily: 'Gilroy',
                        color: Color.fromRGBO(72, 70, 70, 1)),
                  ),
                  Text(
                    '\u2605 $rating',
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
                          'AED $price',
                          style: const TextStyle(
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Image.asset(
                          'assets/images/plus.png',
                          height: 22,
                          width: 28,
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
