import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          title: const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Menu',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          bottom: TabBar(
              //onTap:
              dividerColor: Colors.transparent,
              indicator: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
                color: const Color(0xffFB6236),
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              labelColor: Colors.black,
              tabs: [
                Container(
                  height: 33,
                  width: 64,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Center(child: Text('Dishes')),
                ),
                Container(
                  height: 33,
                  width: 64,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(4)),
                  child: const Center(child: Text('Pizza')),
                ),
                Container(
                  height: 33,
                  width: 64,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(4)),
                  child: const Center(child: Text('Burger')),
                ),
                Container(
                  height: 33,
                  width: 64,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(4)),
                  child: const Center(child: Text('Drinks')),
                ),
                Container(
                  height: 33,
                  width: 64,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Center(child: Text('Dessert')),
                ),
              ]),
        ),
        body: SafeArea(
            child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.center,
              child: Stack(clipBehavior: Clip.antiAlias, children: [
                Material(
                  elevation: 5,
                  shadowColor: Colors.black.withOpacity(0.5),
                  color: Colors.transparent,
                  child: Container(
                    height: 106,
                    width: 359,
                    color: const Color(0xffFFFFFF),
                    child: TabBarView(
                      children: [
                        Container(
                          height: 116,
                          width: 378,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(12, 233, 232, 232)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Image.asset(
                                    "assets/pngegg (42) 3.png"), // Replace with your image path
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 18),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'White Rice',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const Text(
                                        'Basmati rice with Vegetable',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                      ),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffFB6236),
                                          ),
                                          Text(
                                            '4.5',
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                color: Color(0xffFB6236)),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 6, right: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              'AED 45',
                                              style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              width: 28,
                                              height: 22,
                                              decoration: const BoxDecoration(
                                                color: Color(0xffFB6236),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  '+',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 116,
                          width: 378,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(12, 233, 232, 232)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Image.asset(
                                    "assets/pngegg (23) 1.png"), // Replace with your image path
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 18),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Pizza Margherita',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const Text(
                                        'Pizza Margherita Vegetarian',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                      ),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffFB6236),
                                          ),
                                          Text(
                                            '5.0',
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                color: Color(0xffFB6236)),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 6, right: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              'AED 55.9',
                                              style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              width: 28,
                                              height: 22,
                                              decoration: const BoxDecoration(
                                                color: Color(0xffFB6236),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  '+',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 116,
                          width: 378,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(12, 233, 232, 232)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Image.asset(
                                    "assets/pngegg (18) 1.png"), // Replace with your image path
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 18),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Cheese Burger',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const Text(
                                        'Bacon Cheeseburger',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                      ),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffFB6236),
                                          ),
                                          Text(
                                            '5.0',
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                color: Color(0xffFB6236)),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 6, right: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              'AED 55.9',
                                              style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              width: 28,
                                              height: 22,
                                              decoration: const BoxDecoration(
                                                color: Color(0xffFB6236),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  '+',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 116,
                          width: 378,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(12, 233, 232, 232)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Image.asset(
                                    "assets/pngegg (36) 1.png"), // Replace with your image path
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 18),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Coca Cola',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const Text(
                                        'Can Coke',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                      ),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffFB6236),
                                          ),
                                          Text(
                                            '5.0',
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                color: Color(0xffFB6236)),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 6, right: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              'AED 3.9',
                                              style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              width: 28,
                                              height: 22,
                                              decoration: const BoxDecoration(
                                                color: Color(0xffFB6236),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  '+',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 116,
                          width: 378,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(12, 233, 232, 232)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Image.asset(
                                    "assets/pngegg (33) 1.png"), // Replace with your image path
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 18),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Cupcake Strawberry',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const Text(
                                        'Brown and Pink Dessert',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                        ),
                                      ),
                                      const Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffFB6236),
                                          ),
                                          Text(
                                            '5.0',
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                color: Color(0xffFB6236)),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 6, right: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              'AED 10.9',
                                              style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              width: 28,
                                              height: 22,
                                              decoration: const BoxDecoration(
                                                color: Color(0xffFB6236),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  '+',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Positioned(
                  top: 6,
                  left: 6,
                  child: Icon(
                    Icons.favorite_border,
                    color: Color(0xffFB6236),
                    size: 20,
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 325,
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Container(
                      width: 319,
                      height: 54,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: const Color(0xffFB6236)),
                      child: Center(
                          child: TextButton(
                              style: TextButton.styleFrom(
                                fixedSize: const Size.fromWidth(319),
                              ),
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (builder) {
                                      return Container(
                                        width: 349,
                                        height: 548.43,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: const Color(0xffFB6236),
                                        ),
                                        child: Column(
                                          children: [
                                            const Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 8, left: 8),
                                                  child: Text(
                                                    'Coupons',
                                                    style: TextStyle(
                                                        fontSize: 19.94,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                )),
                                            const Divider(),
                                            const Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: EdgeInsets.all(18.0),
                                                child: Text(
                                                  'Cheese Burger',
                                                  style: TextStyle(
                                                      fontSize: 29.91,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ),
                                            ),
                                            const Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 19),
                                                  child: Text(
                                                    'ID\nC13579246810',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                )),
                                            const SizedBox(
                                              height: 80,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 172.52,
                                                  width: 172.52,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18.62)),
                                                  child: Image.asset(
                                                      "assets/QR Code Sample.png"),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      );
                                    });
                              },
                              child: const Text(
                                'Scan Coupon',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ))),
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    Material(
                      elevation: 5,
                      color: Colors.transparent,
                      child: Container(
                        width: 319,
                        height: 54,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: const Color(0xffFB6236)),
                        child: Center(
                            child: TextButton(
                          style: TextButton.styleFrom(
                            fixedSize: const Size.fromWidth(319),
                          ),
                          onPressed: () => showDialog(
                            context: context,
                            builder: (_) => Center(
                              child: Container(
                                width: 319,
                                height: 294,
                                decoration: BoxDecoration(
                                  color: const Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(9),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      'This is an Alert',
                                      style: TextStyle(
                                        color: Color(0xff573240),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration
                                            .none, // Remove the underline
                                        fontFamily: 'Roboto',
                                      ),
                                    ),
                                    //container TextBox
                                    Material(
                                      elevation: 5,
                                      color: Colors.transparent,
                                      child: Container(
                                        height: 54,
                                        width: 225,
                                        decoration: BoxDecoration(
                                          color: const Color(0xffFB6236),
                                          borderRadius:
                                              BorderRadius.circular(9),
                                        ),
                                        child: TextButton(
                                          onPressed: () => Navigator.pop(
                                              context, 'Close alert'),
                                          child: const Text(
                                            'Close alert',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          child: const Text(
                            'Show info',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        )),
                      ),
                    )
                  ],
                ))
          ],
        )),
      ),
    );
  }
}
