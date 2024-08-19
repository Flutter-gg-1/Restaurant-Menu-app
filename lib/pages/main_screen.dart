import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Menu",
          style: TextStyle(fontSize: 24, color: Color(0xff484646)),
        ),
      ),
      body: SingleChildScrollView(
        child: DefaultTabController(
            length: 5,
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                TabBar(
                    unselectedLabelStyle:
                        const TextStyle(color: Color(0xff6a6868)),
                    indicator: BoxDecoration(
                      color: const Color(0xfffb6236),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    dividerHeight: 0,
                    indicatorColor: Colors.transparent,
                    tabs: [
                      Material(
                        elevation: 5,
                        child: Container(
                          height: 33,
                          width: 64,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4)),
                          child: const Tab(
                            text: "Dishes",
                            height: 19,
                          ),
                        ),
                      ),
                      const Tab(
                        text: "Pizza",
                        height: 19,
                      ),
                      const Tab(
                        text: "Burger",
                        height: 19,
                      ),
                      const Tab(
                        text: "Drinks",
                        height: 19,
                      ),
                      const Tab(
                        text: "Desert",
                        height: 19,
                      )
                    ]),
                const SizedBox(
                  height: 70,
                ),
                Container(
                  height: 106,
                  width: 359,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(2)),
                  child: TabBarView(children: [
                    Material(
                      elevation: 5,
                      child: Stack(
                        children: [
                          ListTile(
                            contentPadding:
                                const EdgeInsets.only(top: 10, left: 30),
                            leading: Padding(
                              padding: const EdgeInsets.only(
                                right: 9,
                              ),
                              child: Image.asset("assets/pngegg423.png"),
                            ),
                            isThreeLine: true,
                            title: const Text(
                              "White Rice",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Color(0xff484646)),
                            ),
                            subtitle: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Basmati rice with Vegetable",
                                  style: TextStyle(
                                      fontSize: 13, color: Color(0xff484646)),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 11,
                                      color: Color(0xffFB6236),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "4.5",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Color(0xffFB6236)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const Positioned(
                            top: 16,
                            left: 8,
                            child: Icon(
                              color: Color(0xffFB6236),
                              Icons.favorite_outline,
                              size: 9,
                            ),
                          ),
                          const Positioned(
                            top: 80,
                            left: 160,
                            child: const Text(
                              "AED 45",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 70,
                            left: 320,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: const Color(0xffFB6236),
                              ),
                              width: 28,
                              height: 22,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Material(
                      elevation: 5,
                      child: Stack(
                        children: [
                          ListTile(
                            contentPadding:
                                const EdgeInsets.only(top: 10, left: 30),
                            leading: Padding(
                              padding: const EdgeInsets.only(
                                right: 9,
                              ),
                              child: Image.asset("assets/pngegg (23) 1.png"),
                            ),
                            isThreeLine: true,
                            title: const Text(
                              "Pizza Margherita",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Color(0xff484646)),
                            ),
                            subtitle: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pizza Margherita Vegetarian",
                                  style: TextStyle(
                                      fontSize: 13, color: Color(0xff484646)),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 11,
                                      color: Color(0xffFB6236),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "5.0",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Color(0xffFB6236)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const Positioned(
                            top: 16,
                            left: 8,
                            child: Icon(
                              color: Color(0xffFB6236),
                              Icons.favorite_outline,
                              size: 9,
                            ),
                          ),
                          const Positioned(
                            top: 80,
                            left: 160,
                            child: const Text(
                              "AED 55.9",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 70,
                            left: 320,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: const Color(0xffFB6236),
                              ),
                              width: 28,
                              height: 22,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Material(
                      elevation: 5,
                      child: Stack(
                        children: [
                          ListTile(
                            contentPadding:
                                const EdgeInsets.only(top: 10, left: 30),
                            leading: Padding(
                              padding: const EdgeInsets.only(
                                right: 9,
                              ),
                              child: Image.asset("assets/pngegg (18) 1.png"),
                            ),
                            isThreeLine: true,
                            title: const Text(
                              "Cheese Burger",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Color(0xff484646)),
                            ),
                            subtitle: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Bacon Cheeseburger",
                                  style: TextStyle(
                                      fontSize: 13, color: Color(0xff484646)),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 11,
                                      color: Color(0xffFB6236),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "5.0",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Color(0xffFB6236)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const Positioned(
                            top: 16,
                            left: 8,
                            child: Icon(
                              color: Color(0xffFB6236),
                              Icons.favorite_outline,
                              size: 9,
                            ),
                          ),
                          const Positioned(
                            top: 80,
                            left: 113,
                            child: const Text(
                              "AED 55.9",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 70,
                            left: 320,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: const Color(0xffFB6236),
                              ),
                              width: 28,
                              height: 22,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Material(
                      elevation: 5,
                      child: Stack(
                        children: [
                          ListTile(
                            contentPadding:
                                const EdgeInsets.only(top: 10, left: 30),
                            leading: Padding(
                              padding: const EdgeInsets.only(
                                right: 9,
                              ),
                              child: Image.asset("assets/pngegg (36) 1.png"),
                            ),
                            isThreeLine: true,
                            title: const Text(
                              "Coca Cola",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Color(0xff484646)),
                            ),
                            subtitle: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Can Coke",
                                  style: TextStyle(
                                      fontSize: 13, color: Color(0xff484646)),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 11,
                                      color: Color(0xffFB6236),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "5.0",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Color(0xffFB6236)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const Positioned(
                            top: 16,
                            left: 8,
                            child: Icon(
                              color: Color(0xffFB6236),
                              Icons.favorite_outline,
                              size: 9,
                            ),
                          ),
                          const Positioned(
                            top: 80,
                            left: 113,
                            child: const Text(
                              "AED 3.9",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 70,
                            left: 320,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: const Color(0xffFB6236),
                              ),
                              width: 28,
                              height: 22,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Material(
                      elevation: 5,
                      child: Stack(
                        children: [
                          ListTile(
                            contentPadding:
                                const EdgeInsets.only(top: 10, left: 30),
                            leading: Padding(
                              padding: const EdgeInsets.only(
                                right: 9,
                              ),
                              child: Image.asset("assets/pngegg (33) 1.png"),
                            ),
                            isThreeLine: true,
                            title: const Text(
                              "Cupcake Strawberry ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Color(0xff484646)),
                            ),
                            subtitle: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Brown and Pink Dessert",
                                  style: TextStyle(
                                      fontSize: 13, color: Color(0xff484646)),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 11,
                                      color: Color(0xffFB6236),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "5.0",
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: Color(0xffFB6236)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const Positioned(
                            top: 16,
                            left: 8,
                            child: Icon(
                              color: Color(0xffFB6236),
                              Icons.favorite_outline,
                              size: 9,
                            ),
                          ),
                          const Positioned(
                            top: 80,
                            left: 100,
                            child: const Text(
                              "AED 10.9",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 70,
                            left: 320,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: const Color(0xffFB6236),
                              ),
                              width: 28,
                              height: 22,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 310,
                ),
                Material(
                  elevation: 6,
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                                width: 349,
                                height: 544,
                                decoration: const BoxDecoration(
                                    color: Color(0xffFB6236),
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(27),
                                        topRight: Radius.circular(27))),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 17),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Coupons",
                                        style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                      const Divider(),
                                      const Text(
                                        "Cheese Burger",
                                        style: TextStyle(
                                            fontSize: 29,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                      const SizedBox(
                                        height: 26,
                                      ),
                                      const Text(
                                        "id",
                                        style: TextStyle(
                                            fontSize: 14.96,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                      const Text(
                                        "C13579246810",
                                        style: const TextStyle(
                                            fontSize: 17.45,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white),
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: 172.52,
                                            height: 172.52,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(18)),
                                            child: Image.asset(
                                                "assets/QR Code Sample.png")),
                                      )
                                    ],
                                  ),
                                ));
                          });
                    },
                    child: Container(
                      width: 319,
                      height: 54,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: const Color(0xffFB6236)),
                      child: const Center(
                        child: Text(
                          "Scan Coupon",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                Material(
                  elevation: 6,
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                titlePadding: EdgeInsets.only(
                                    left: 60, right: 60, top: 100, bottom: 60),
                                backgroundColor: Colors.white,
                                title: Text(
                                  "This is an alert",
                                  style: TextStyle(
                                      fontSize: 26.04,
                                      color: Color(0xff573240),
                                      fontWeight: FontWeight.w500),
                                ),
                                actions: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      width: 225,
                                      height: 54,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(9),
                                          color: Color(0xffFB6236)),
                                      child: Center(
                                        child: Text(
                                          "Close alert",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 26.04,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ));
                    },
                    child: Container(
                      width: 319,
                      height: 54,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: const Color(0xffFB6236)),
                      child: const Center(
                        child: Text(
                          "Show Info",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            )),
      ),
    );
  }
}
