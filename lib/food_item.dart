import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FoodItem extends StatelessWidget {
  final String foodPic;
  final String foodName;
  final String foodDesc;
  final String foodRate;
  final String foodPrice;
  const FoodItem(
      {super.key,
      required this.foodDesc,
      required this.foodName,
      required this.foodPic,
      required this.foodPrice,
      required this.foodRate});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      constraints: BoxConstraints(maxHeight: 106, maxWidth: 359),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black45, offset: Offset(0, 3), blurRadius: 7)
          ],
          borderRadius: BorderRadius.all(Radius.circular(2))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Image.asset(
                "assets/heart.png",
                width: 10,
                fit: BoxFit.contain,
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                foodPic,
                width: 115,
                height: 61,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                foodName,
                style: const TextStyle(
                    color: Color(0xff484646),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                foodDesc,
                style: const TextStyle(color: Color(0xff484646), fontSize: 13),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Color(0xffFB6236),
                    size: 11,
                  ),
                  Text(
                    foodRate,
                    style:
                        const TextStyle(color: Color(0xffFB6236), fontSize: 11),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "AED $foodPrice",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    color: const Color(0xffFB6236),
                    child: const Text("+"),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
