import 'package:flutter/material.dart';
import 'package:flutter_application_6/common.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = const Color(0xffFB6236);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
            title: const Text('Menu',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24)),
            centerTitle: false),
        body: Column(
          children: [
            SizedBox(
              height: 67,
              child: TabBar(
                  indicatorColor: Colors.transparent,
                  dividerColor: Colors.transparent,
                  onTap: (int index) {},
                  tabs: [
                    Container(
                      width: 65,
                      height: 34,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: const Tab(
                        text: 'Dishes',
                      ),
                    ),
                    const Tab(
                      text: 'Pizza',
                    ),
                    const Tab(
                      text: 'Burger',
                    ),
                    const Tab(
                      text: 'Drinks',
                    ),
                    const Tab(
                      text: 'Dessert',
                    ),
                  ]),
            ),
            Flexible(
              child: TabBarView(children: [
                Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 50),
                      myContainer(),
                      myButton(),
                    ],
                  ),
                ),
                const Center(
                  child: Text('Pizza'),
                ),
                const Center(
                  child: Text('Burger'),
                ),
                const Center(
                  child: Text('Drinks'),
                ),
                const Center(
                  child: Text('Dessert'),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
