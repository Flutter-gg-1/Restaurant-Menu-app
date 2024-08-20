import 'package:flutter/material.dart';

import 'widgets/menu_container.dart';
import 'widgets/tab_bar_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title:  const Padding(
            padding: EdgeInsets.only(right: 330),
            child: Text(
              "Menu",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xff484646)),
            ),
          ),
          bottom: TabBar( 
            indicator: BoxDecoration(
              color: const Color(0xffFB6236),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(4),
              boxShadow:  [
                BoxShadow(
                            color: Colors.grey.withOpacity(0.5), blurRadius: 5,
                            blurStyle: BlurStyle.outer, )
              ]
            ),
            labelStyle: TextStyle(color: Colors.white),
            unselectedLabelColor: Color(0xff484646),
            tabs: const [
              TabBarContainers(text: "Dishes",),
              TabBarContainers(text: "Pizza",),
              TabBarContainers(text: "Burger",),
              TabBarContainers(text: "Drinks",),
              TabBarContainers(text: "Dessert",),
            ],
            dividerHeight: 0,
          ),
        ),
        body: const TabBarView(
          children: [
            MenuContainer(title: "White Rice", subtitle: "Basmati rice with Vegetable", rate: "4.5", price: "AED 45", photoBath: "assets/pngegg.png",),
            MenuContainer(photoBath: "assets/pizza.png", price: "AED 55.9", rate: "5.0", subtitle: "Pizza Margherita Vegetarian", title: "Pizza Margherita"),
            MenuContainer(photoBath: "assets/burger.png", price: "AED 55.9", rate: "5.0", subtitle: "Bacon Cheeseburger", title: "Cheese Burger"),
            MenuContainer(photoBath: "assets/drink.png", price: "AED 3.9", rate: "5.0", subtitle: "Can Coke", title: "Coca Cola"),
            MenuContainer(photoBath: "assets/dessert.png", price: "AED 10.9", rate: "5.0", subtitle: "Brown and Pink Dessert", title: "Cupcake Strawberry ")
              ],
            ),
          
        ),
    );
  }
}


