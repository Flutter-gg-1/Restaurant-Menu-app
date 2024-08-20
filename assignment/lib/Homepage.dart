import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Text('Menu', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            bottom: 
            ButtonsTabBar(
              elevation:6,
              buttonMargin: EdgeInsets.fromLTRB(7, 5, 7, 5),
              backgroundColor: const Color.fromARGB(255, 251, 97, 54),
                unselectedBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
                unselectedLabelStyle: const TextStyle(color: Colors.black),
                labelStyle:
                  const TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                   ),
              tabs: const [
                  Tab(
                    text: "Dishes ",
                  ),
                  Tab(
                    text: "Pizza ",
                  ),
                   Tab(
                    text: "Burger ",
                  ),
                  Tab(
                    text: "Drinks ",
                  ),
                  Tab(
                    text: "Dessert ",
                  ),
              ]
            
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                child: const Center(child: Icon(Icons.directions_car)),
              ),
              Container(
                child: const Center(child: Icon(Icons.directions_transit)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

