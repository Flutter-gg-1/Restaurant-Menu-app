import 'package:flutter/material.dart';

class FoodOption extends StatelessWidget {
  final String title, subtitle, imagePath, rate, price;
  const FoodOption({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.rate,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              'assest/image/heart.png',
              width: 15,
              height: 15,
            )
          ],
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                width: 115,
                height: 61,
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                title,
                style: const TextStyle(
                    color: Color(0xFF484646),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
               Text(
                subtitle,
                style: const TextStyle(color: Color(0xFF484646), fontSize: 12),
              ),
               Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Color(0xFFFB6236),
                    size: 18,
                  ),
                  Text(
                    rate,
                    style: const TextStyle(
                        color: Color(0xFFFB6236), fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                   Text(
                    'AED $price',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 70),
                    width: 28,
                    height: 22,
                    padding: const EdgeInsets.only(bottom: 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xFFFB6236)),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
