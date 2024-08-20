import 'package:flutter/material.dart';
import 'package:flutter_application_6/common.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Color color1 = const Color(0xffFB6236);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        key: _scaffoldKey,
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
                      myButton(inputKey: _scaffoldKey),
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
