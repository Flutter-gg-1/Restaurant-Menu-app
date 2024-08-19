import 'package:alert_lab/burger.dart';
import 'package:alert_lab/dessert.dart';
import 'package:alert_lab/dishes.dart';
import 'package:alert_lab/drinks.dart';
import 'package:alert_lab/pizza.dart';
import 'package:flutter/material.dart';

class AlertLab extends StatefulWidget {
  const AlertLab({super.key});

  @override
  State<AlertLab> createState() => _AlertLabState();
}

class _AlertLabState extends State<AlertLab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title:
              const Text("Menu", style: TextStyle(fontWeight: FontWeight.bold)),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Container(
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.white, // Text color for selected tab
                unselectedLabelColor:
                    Colors.black, // Text color for unselected tabs
                indicator: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: const Color(0xffFB6236),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 4,
                      spreadRadius: 1,
                      offset: const Offset(0, 2), // Shadow for the selected tab
                    ),
                  ],
                ),
                tabs: [
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          blurStyle: BlurStyle.outer)
                    ]),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text("Dishes"),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          blurStyle: BlurStyle.outer)
                    ]),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text("Pizza"),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          blurStyle: BlurStyle.outer)
                    ]),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text("Burger"),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          blurStyle: BlurStyle.outer)
                    ]),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text("Drinks"),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          blurStyle: BlurStyle.outer)
                    ]),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text("Dessert"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: const Column(
          children: [
            Expanded(
              child: TabBarView(
                children: [Dishes(), Pizza(), Burger(), Drinks(), Dessert()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
