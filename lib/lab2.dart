import 'package:flutter/material.dart';
import 'package:restaurant_menu_app/bottom_dialouge.dart';
import 'package:restaurant_menu_app/tabs.dart';
import 'food.dart';

class Lab2 extends StatefulWidget {
  const Lab2({super.key});

  @override
  State<Lab2> createState() => _Lab2State();
}

class _Lab2State extends State<Lab2> {
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
        padding: const EdgeInsets.symmetric(horizontal: 30),
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
                    Tabs(
                      label: 'Dishes',
                      selected: selected,
                      index: 0,
                    ),
                    Tabs(label: 'Pizza', selected: selected, index: 1),
                    Tabs(label: 'Burger', selected: selected, index: 2),
                    Tabs(label: 'Drinks', selected: selected, index: 3),
                    Tabs(label: 'Dessert', selected: selected, index: 4),
                  ]),
              const SizedBox(
                height: 74,
              ),
              const SizedBox(
                height: 106,
                width: 359,
                child: Expanded(
                  child: TabBarView(children: [
                    Food(
                      image: 'assets/images/1.png',
                      name: 'White Rice',
                      desc: 'Basmati rice with Vegetable',
                      rating: '4.5',
                      price: 45,
                    ),
                    Food(
                      image: 'assets/images/2.png',
                      name: 'Pizza Margherita',
                      desc: 'Pizza Margherita Vegetarian',
                      rating: '5.0',
                      price: 55.9,
                    ),
                    Food(
                      image: 'assets/images/3.png',
                      name: 'Cheese Burger',
                      desc: 'Bacon Cheeseburger',
                      rating: '5.0',
                      price: 55.9,
                    ),
                    Food(
                      image: 'assets/images/4.png',
                      name: 'Coca Cola',
                      desc: 'Can Coke',
                      rating: '5.0',
                      price: 3.9,
                    ),
                    Food(
                      image: 'assets/images/5.png',
                      name: 'Cupcake Strawberry ',
                      desc: 'Brown and Pink Dessert',
                      rating: '5.0',
                      price: 10.9,
                    ),
                  ]),
                ),
              ),
              const SizedBox(
                height: 370,
              ),
              Column(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(251, 98, 54, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9)),
                        fixedSize: Size(319, 54),
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
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(251, 98, 54, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9)),
                        fixedSize: Size(319, 54)
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9)),
                                backgroundColor: Colors.white,
                                title: const SizedBox(
                                  height: 294,
                                  width: 319,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'This is an Alert',
                                        style: TextStyle(
                                            fontSize: 26.04,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(87, 50, 64, 1)),
                                      ),
                                    ],
                                  ),
                                ),
                                actions: [
                                  Center(
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(9)),
                                            minimumSize:
                                                const Size.fromHeight(54),
                                            fixedSize:
                                                const Size.fromWidth(225),
                                            backgroundColor:
                                                const Color.fromRGBO(
                                                    251, 98, 54, 1)),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          'Close Alert',
                                          style: TextStyle(
                                              fontSize: 26.04,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        )),
                                  )
                                ],
                              );
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
