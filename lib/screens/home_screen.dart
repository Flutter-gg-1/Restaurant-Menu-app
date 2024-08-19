import 'package:flutter/material.dart';
import 'package:restaurant_menu_app/widgets/alert_message.dart';

import '../widgets/bottom_dialouge.dart';
import '../widgets/food_card.dart';
import '../widgets/tab_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static List<String> tabs = ['Dishes', 'Pizza', 'Burger', 'Drinks', 'Dessert'];
  static int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Menu',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: DefaultTabController(
          length: 5,
          child: Column(
            children: [
              TabBar(
                  indicatorColor: Colors.transparent,
                  dividerColor: Colors.transparent,
                  labelPadding: const EdgeInsets.all(0),
                  onTap: (index) {
                    setState(() {
                      selected = index;
                    });
                  },
                  labelColor: Colors.white,
                  tabs: [
                    TabCard(
                      label: tabs[0],
                      selected: selected,
                      index: 0,
                    ),
                    TabCard(label: tabs[1], selected: selected, index: 1),
                    TabCard(label: tabs[2], selected: selected, index: 2),
                    TabCard(label: tabs[3], selected: selected, index: 3),
                    TabCard(label: tabs[4], selected: selected, index: 4),
                  ]),
              const SizedBox(
                height: 74,
              ),
              const SizedBox(
                height: 106,
                width: 359,
                child: TabBarView(children: [
                  FoodCard(
                    image: 'assets/images/1.png',
                    name: 'White Rice',
                    desc: 'Basmati rice with Vegetable',
                    rating: '4.5',
                    price: 45,
                  ),
                  FoodCard(
                    image: 'assets/images/2.png',
                    name: 'Pizza Margherita',
                    desc: 'Pizza Margherita Vegetarian',
                    rating: '5.0',
                    price: 55.9,
                  ),
                  FoodCard(
                    image: 'assets/images/3.png',
                    name: 'Cheese Burger',
                    desc: 'Bacon Cheeseburger',
                    rating: '5.0',
                    price: 55.9,
                  ),
                  FoodCard(
                    image: 'assets/images/4.png',
                    name: 'Coca Cola',
                    desc: 'Can Coke',
                    rating: '5.0',
                    price: 3.9,
                  ),
                  FoodCard(
                    image: 'assets/images/5.png',
                    name: 'Cupcake Strawberry ',
                    desc: 'Brown and Pink Dessert',
                    rating: '5.0',
                    price: 10.9,
                  ),
                ]),
              ),
              const SizedBox(
                height: 320,
              ),
              Column(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(251, 98, 54, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9)),
                        fixedSize: const Size(319, 54),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(35.81),
                                    topRight: Radius.circular(35.81))),
                            context: context,
                            builder: (context) {
                              return BottomDialouge(index: selected);
                            });
                      },
                      child: const Text(
                        'Scan Coupon',
                        style: TextStyle(
                            fontSize: 19.94,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(251, 98, 54, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          fixedSize: const Size(319, 54)),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return const AlertMessage();
                            });
                      },
                      child: const Text(
                        'Show info',
                        style: TextStyle(
                            fontSize: 19.94,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
