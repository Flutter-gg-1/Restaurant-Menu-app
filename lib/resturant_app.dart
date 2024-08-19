import 'package:flutter/material.dart';
import 'package:resturant_app/food_item.dart';
import 'package:resturant_app/menu_item.dart';

class ResturantApp extends StatefulWidget {
  const ResturantApp({super.key});

  @override
  State<ResturantApp> createState() => _ResturantAppState();
}

class _ResturantAppState extends State<ResturantApp> {

  int chosen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: const Text("Menu",style: TextStyle(color: Color(0xff484646), fontSize: 24, fontWeight: FontWeight.bold)),),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 500,
              height: 100,
              child: DefaultTabController(
                length: 5,
                child: Column(
                  children: [
                    Expanded(
                      child: TabBar(
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black,
                        indicatorColor: Colors.transparent,
                        dividerColor: Colors.transparent,
                        onTap: (value) {
                          setState(() {
                            chosen = value;
                          });
                        },
                        tabs: [
                          MenuItem(itemName: "Dishes", color : chosen==0 ? Color(0xffFB6236) : Colors.white),
                          MenuItem(itemName: "Pizza", color : chosen==1 ? Color(0xffFB6236) : Colors.white),
                          MenuItem(itemName: "Burger", color : chosen==2 ? Color(0xffFB6236) : Colors.white),
                          MenuItem(itemName: "Drinks", color : chosen==3 ? Color(0xffFB6236) : Colors.white),
                          MenuItem(itemName: "Dessert", color : chosen==4 ? Color(0xffFB6236) : Colors.white),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        clipBehavior: Clip.none,
                        children: [
                          FoodItem(foodName: "White Rice",foodDesc: "Basmati rice with Vegetable", foodPic: "assets/rice.png",foodPrice: "45",foodRate: "4.5",),
                          FoodItem(foodName: "Pizza Margherita",foodDesc: "Pizza Margherita Vegetarian", foodPic: "assets/pizza.png",foodPrice: "55.9",foodRate: "5.0",),
                          FoodItem(foodName: "Cheese Burger",foodDesc: "Bacon Cheeseburger", foodPic: "assets/burger.png",foodPrice: "55.9",foodRate: "5.0",),
                          FoodItem(foodName: "Coca Cola",foodDesc: "Can Coke", foodPic: "assets/cola.png",foodPrice: "3.9",foodRate: "5.0",),
                          FoodItem(foodName: "Cupcake Strawberry",foodDesc: "Brown and Pink Dessert", foodPic: "assets/cake.png",foodPrice: "45",foodRate: "10.9",),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}