import 'package:flutter/material.dart';

// food cared with changed parameter
Widget foodCard(
    {required image,
    required title,
    required subTitle,
    required rating,
    required price}) {
  return Container(
    height: 120,
    width: 350,
    padding: const EdgeInsets.only(top: 15, bottom: 5, right: 20, left: 15),
    margin: const EdgeInsets.only(top: 50),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: const Color.fromARGB(255, 121, 121, 121).withOpacity(0.3),
          spreadRadius: 3,
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: Row(
      children: [
        Image.asset(image),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Text(
              subTitle,
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Color(0xffFB6236),
                  size: 17,
                ),
                Text(
                  rating,
                  style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFB6236)),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Text(
                  "AED $price",
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 80,
                ),
                const Icon(
                  Icons.add_box_rounded,
                  color: Color(0xffFB6236),
                  size: 30,
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}
