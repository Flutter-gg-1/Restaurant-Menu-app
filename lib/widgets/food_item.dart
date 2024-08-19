import 'package:flutter/material.dart'; // imports material design widgets and properities

// widget represents a food item (rice - coke ... etc)
class FoodItem extends StatelessWidget {
  final String foodPic;
  final String foodName;
  final String foodDesc;
  final num foodRate;
  final num foodPrice;
  final num picHeight;
  final num picWidth;
  const FoodItem(
      {super.key,
      required this.foodDesc,
      required this.foodName,
      required this.foodPic,
      required this.foodPrice,
      required this.foodRate,
      required this.picHeight,
      required this.picWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30), // space between each food item
      constraints: const BoxConstraints(maxHeight: 106, maxWidth: 359),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            offset: Offset(0, 3),
            blurRadius: 7
          )
        ],
        borderRadius: BorderRadius.all(Radius.circular(2))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const SizedBox(height: 10,),
              Image.asset("assets/heart.png", width: 10,fit: BoxFit.contain),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset(foodPic,width: picWidth.toDouble(),height: picHeight.toDouble())]
          ),
          const SizedBox(width: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                foodName,
                style: const TextStyle(color: Color(0xff484646),fontSize: 14,fontWeight: FontWeight.bold)
              ),
              Text(
                foodDesc,
                style: const TextStyle(color: Color(0xff484646), fontSize: 13),
              ),
              Row(
                children: [
                  const Icon(Icons.star,color: Color(0xffFB6236),size: 11),
                  Text(foodRate.toString(),style:const TextStyle(color: Color(0xffFB6236), fontSize: 11))
                ],
              ),
              Row(
                children: [
                  Text("AED $foodPrice",style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  const SizedBox(width: 100,),
                  Image.asset("assets/add.png")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}