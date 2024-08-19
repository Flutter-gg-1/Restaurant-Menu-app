import 'package:flutter/material.dart';
import 'package:res/models/food_model.dart';
import 'package:res/widget/tab_contant.dart';




class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Menu"),
          bottom: TabBar(
            indicatorWeight: 0,
            tabAlignment: TabAlignment.center,
            labelPadding: const EdgeInsets.only(
              left: 3,
              right: 2,
            ),

            
            dividerColor: Colors.transparent,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xffFB6236),
            ),
            tabs: [
              Tab(
                child: Container(
                  width: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0xFF9E9E9E).withOpacity(0.2),
                        width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text("Dishes"),
                ),
              ),
              Tab(
                child: Container(
                  width: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0xFF9E9E9E).withOpacity(0.2),
                        width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text("Pizza"),
                ),
              ),
              Tab(
                child: Container(
                  width: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0xFF9E9E9E).withOpacity(0.2),
                        width: 0.5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text("Burger"),
                ),
              ),
              Tab(
                child: Container(
                  width: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0xFF9E9E9E).withOpacity(0.2),
                        width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text("Drinks"),
                ),
              ),
              Tab(
                child: Container(
                  width: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color(0xFF9E9E9E).withOpacity(0.2),
                        width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text("Dessert"),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TabContant(
              foodModel: FoodModel(
                  name: "White Rice",
                  sub: "Basmati rice with Vegetable",
                  star: "4.5",
                  price: "AED 45",
                  img: "asset/img/pngegg (42) 3.png"),
            ),

            
            TabContant(
              foodModel: FoodModel(
                  name: "Pizza Margherita",
                  sub: "Pizza Margherita Vegetarian",
                  star: "5.0",
                  price: "AED 55.9",
                  img: "asset/img/pngegg (23) 1.png"),
            ),
            TabContant(
              foodModel: FoodModel(
                  name: "Cheese Burger",
                  sub: "Bacon Cheeseburger",
                  star: "5.0",
                  price: "AED 55.9",
                  img: "asset/img/pngegg (18) 1.png"),
            ),
            TabContant(
              foodModel: FoodModel(
                  name: "Coca Cola",
                  sub: "Can Coke",
                  star: "5.0",
                  price: "AED 3.9",
                  img: "asset/img/pngegg (36) 1.png"),
            ),

            TabContant(
              foodModel: FoodModel(
                  name: "Cupcake Strawberry",
                  sub: "Brown and Pink Dessert",
                  star: "5.0",
                  price: "AED 10.9",
                  img: "asset/img/pngegg (33) 1.png"),
            ),
          ],
        ),
      ),
    );
  }
}
