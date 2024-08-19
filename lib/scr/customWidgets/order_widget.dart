import 'package:flutter/material.dart';

class OrderWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String description;
  final String rate;
  final String price;

  const OrderWidget(
      {super.key,
      required this.name,
      required this.description,
      required this.rate,
      required this.price,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.all(8),
      height: 108,
      width: 300,
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
            spreadRadius: 3,
            color: Colors.black12,
            offset: Offset(0, 5),
            blurStyle: BlurStyle.outer,
            blurRadius: 6),
      ]),
      child: Stack(
        children: [
          const Positioned(
            top: 5,
            left: 0,
            child: Icon(
              color: Colors.red,
              Icons.favorite_border,
              size: 18,
            ),
          ),
          Positioned(
              bottom: 10,
              top: 0,
              left: 7,
              child: SizedBox(
                  height: 80, width: 115, child: Image.asset(imageUrl))),
          Positioned(
            right: 0,
            left: 149,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      color: Color(0xff484646),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  description,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 13),
                  maxLines: 1,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Color(0xffFB6236),
                      size: 20,
                    ),
                    Text(
                      rate,
                      style: const TextStyle(color: Color(0xffFB6236)),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Icon(
                      Icons.add_box_rounded,
                      size: 30,
                      color: Color(0xffFB6236),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
