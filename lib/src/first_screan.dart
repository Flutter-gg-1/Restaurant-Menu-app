import 'package:flutter/material.dart';

class Bootom extends StatefulWidget {
  const Bootom({super.key});

  @override
  State<Bootom> createState() => _BootomState();
}

class _BootomState extends State<Bootom> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController!.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        title:
            const Align(alignment: Alignment.centerLeft, child: Text("MENO")),
      ),
      backgroundColor: const Color(0xffFFFFFF),
      body: DefaultTabController(
        length: 5,
        child: Column(
          children: [
            TabBar(
                controller: _tabController,
                dividerColor: const Color(0xffFFFFFF),
                labelColor: const Color(0xffFFFFFF),
                indicatorColor: const Color(0xffFFFFFF),
                tabs: [
                  SizedBox(
                    height: 33,
                    width: 64,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      elevation: 4,
                      color: _tabController!.index == 0
                          ? const Color(0xffFB6236)
                          : Colors.white,
                      margin: const EdgeInsets.only(right: 10),
                      shadowColor: Colors.grey,
                      child: const FittedBox(
                        fit: BoxFit.none,
                        child: Text(
                          'Dishes',
                          style: TextStyle(
                              fontSize: 14, fontFamily: 'Gilroy-Regular'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 33,
                    width: 64,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      elevation: 4,
                      color: _tabController!.index == 1
                          ? const Color(0xffFB6236)
                          : Colors.white,
                      margin: const EdgeInsets.only(right: 8),
                      shadowColor: Colors.grey,
                      child: const FittedBox(
                        fit: BoxFit.none,
                        child: Text('Pizza'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 33,
                    width: 64,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      elevation: 4,
                      color: _tabController!.index == 2
                          ? const Color(0xffFB6236)
                          : Colors.white,
                      margin: const EdgeInsets.only(right: 10),
                      shadowColor: Colors.grey,
                      child: const FittedBox(
                        fit: BoxFit.none,
                        child: Text('Burger'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 33,
                    width: 64,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      elevation: 4,
                      color: _tabController!.index == 3
                          ? const Color(0xffFB6236)
                          : Colors.white,
                      margin: const EdgeInsets.only(right: 10),
                      shadowColor: Colors.grey,
                      child: const FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text('Drinks'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 33,
                    width: 66,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      elevation: 4,
                      color: _tabController!.index == 4
                          ? const Color(0xffFB6236)
                          : Colors.white,
                      margin: const EdgeInsets.only(right: 10),
                      shadowColor: Colors.grey,
                      child: const FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'Dessert',
                        ),
                      ),
                    ),
                  ),
                ]),
            Expanded(
              child: TabBarView(controller: _tabController, children: [
                ListView(children: [
                  Container(
                    margin: const EdgeInsets.only(top: 48, left: 36, right: 35),
                    width: 359,
                    height: 106,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: const BorderRadius.all(Radius.circular(2)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                            right: 244,
                            top: 19,
                            bottom: 26,
                            left: 29,
                            child: Image.asset('assets/pngegg (42) 3 (1).png')),
                        Positioned(
                            left: 8,
                            top: 16,
                            bottom: 81,
                            right: 341,
                            child: Image.asset('assets/Vector (11).png')),
                        Positioned(
                            left: 318,
                            top: 73,
                            right: 13,
                            bottom: 11,
                            child: Image.asset('assets/Vector@2x.png')),
                        const Positioned(
                            top: 80,
                            left: 169,
                            right: 130,
                            bottom: 11,
                            child: FittedBox(
                              fit: BoxFit.none,
                              child: Text(
                                'AED 55.9',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            )),
                        const Positioned(
                            top: 51,
                            left: 169,
                            right: 178,
                            bottom: 44,
                            child: FittedBox(
                                fit: BoxFit.none,
                                child: Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.red,
                                ))),
                        const Positioned(
                            top: 52,
                            left: 185,
                            right: 158,
                            bottom: 43,
                            child: FittedBox(
                                fit: BoxFit.none,
                                child: Text(
                                  "5.0",
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.red),
                                ))),
                        const Positioned(
                            top: 16,
                            left: 130,
                            right: 81,
                            bottom: 79,
                            child: FittedBox(
                                fit: BoxFit.none,
                                child: Text(
                                  "White rice",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ))),
                        const Positioned(
                            top: 30,
                            left: 238,
                            right: 81,
                            bottom: 59,
                            child: FittedBox(
                                fit: BoxFit.none,
                                child: Text(
                                  "Pizza Margherita Vegetarian",
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                                )))
                      ],
                    ),
                  ),
                ]),
                ListView(children: [
                  Container(
                    margin: const EdgeInsets.only(top: 48, left: 36, right: 35),
                    width: 359,
                    height: 106,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: const BorderRadius.all(Radius.circular(2)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                            right: 244,
                            top: 19,
                            bottom: 26,
                            left: 29,
                            child: Image.asset('assets/pngegg (36) 1.png')),
                        Positioned(
                            left: 8,
                            top: 16,
                            bottom: 81,
                            right: 341,
                            child: Image.asset('assets/Vector (11).png')),
                        Positioned(
                            left: 318,
                            top: 73,
                            right: 13,
                            bottom: 11,
                            child: Image.asset('assets/Vector@2x.png')),
                        const Positioned(
                            top: 80,
                            left: 169,
                            right: 130,
                            bottom: 11,
                            child: FittedBox(
                              fit: BoxFit.none,
                              child: Text(
                                'AED 55.9',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            )),
                        const Positioned(
                            top: 51,
                            left: 169,
                            right: 178,
                            bottom: 44,
                            child: FittedBox(
                                fit: BoxFit.none,
                                child: Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.red,
                                ))),
                        const Positioned(
                            top: 52,
                            left: 185,
                            right: 158,
                            bottom: 43,
                            child: FittedBox(
                                fit: BoxFit.none,
                                child: Text(
                                  "5.0",
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.red),
                                ))),
                        const Positioned(
                            top: 16,
                            left: 130,
                            right: 81,
                            bottom: 79,
                            child: FittedBox(
                                fit: BoxFit.none,
                                child: Text(
                                  "White rice",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ))),
                        const Positioned(
                            top: 30,
                            left: 238,
                            right: 81,
                            bottom: 59,
                            child: FittedBox(
                                fit: BoxFit.none,
                                child: Text(
                                  "Pizza Margherita Vegetarian",
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                                )))
                      ],
                    ),
                  ),
                ]),
                ListView(children: [
                  Container(
                    margin: const EdgeInsets.only(top: 48, left: 36, right: 35),
                    width: 359,
                    height: 106,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: const BorderRadius.all(Radius.circular(2)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                            right: 244,
                            top: 19,
                            bottom: 26,
                            left: 29,
                            child: Image.asset('assets/pngegg (33) 1.png')),
                        Positioned(
                            left: 8,
                            top: 16,
                            bottom: 81,
                            right: 341,
                            child: Image.asset('assets/Vector (11).png')),
                        Positioned(
                            left: 318,
                            top: 73,
                            right: 13,
                            bottom: 11,
                            child: Image.asset('assets/Vector@2x.png')),
                        const Positioned(
                            top: 80,
                            left: 169,
                            right: 130,
                            bottom: 11,
                            child: FittedBox(
                              fit: BoxFit.none,
                              child: Text(
                                'AED 55.9',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            )),
                        const Positioned(
                            top: 51,
                            left: 169,
                            right: 178,
                            bottom: 44,
                            child: FittedBox(
                                fit: BoxFit.none,
                                child: Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.red,
                                ))),
                        const Positioned(
                            top: 52,
                            left: 185,
                            right: 158,
                            bottom: 43,
                            child: FittedBox(
                                fit: BoxFit.none,
                                child: Text(
                                  "5.0",
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.red),
                                ))),
                        const Positioned(
                            top: 16,
                            left: 130,
                            right: 81,
                            bottom: 79,
                            child: FittedBox(
                                fit: BoxFit.none,
                                child: Text(
                                  "White rice",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ))),
                        const Positioned(
                            top: 30,
                            left: 238,
                            right: 81,
                            bottom: 59,
                            child: FittedBox(
                                fit: BoxFit.none,
                                child: Text(
                                  "Pizza Margherita Vegetarian",
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                                )))
                      ],
                    ),
                  ),
                ]),
                ListView(children: [
                  Container(
                    margin: const EdgeInsets.only(top: 48, left: 36, right: 35),
                    width: 359,
                    height: 106,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: const BorderRadius.all(Radius.circular(2)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                            right: 244,
                            top: 19,
                            bottom: 26,
                            left: 29,
                            child: Image.asset('assets/pngegg (18) 1.png')),
                        Positioned(
                            left: 8,
                            top: 16,
                            bottom: 81,
                            right: 341,
                            child: Image.asset('assets/Vector (11).png')),
                        Positioned(
                            left: 318,
                            top: 73,
                            right: 13,
                            bottom: 11,
                            child: Image.asset('assets/Vector@2x.png')),
                        const Positioned(
                            top: 80,
                            left: 169,
                            right: 130,
                            bottom: 11,
                            child: FittedBox(
                              fit: BoxFit.none,
                              child: Text(
                                'AED 55.9',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            )),
                        const Positioned(
                            top: 51,
                            left: 169,
                            right: 178,
                            bottom: 44,
                            child: FittedBox(
                                fit: BoxFit.none,
                                child: Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.red,
                                ))),
                        const Positioned(
                            top: 52,
                            left: 185,
                            right: 158,
                            bottom: 43,
                            child: FittedBox(
                                fit: BoxFit.none,
                                child: Text(
                                  "5.0",
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.red),
                                ))),
                        const Positioned(
                            top: 16,
                            left: 130,
                            right: 81,
                            bottom: 79,
                            child: FittedBox(
                                fit: BoxFit.none,
                                child: Text(
                                  "White rice",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ))),
                        const Positioned(
                            top: 30,
                            left: 238,
                            right: 81,
                            bottom: 59,
                            child: FittedBox(
                                fit: BoxFit.none,
                                child: Text(
                                  "Pizza Margherita Vegetarian",
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                                )))
                      ],
                    ),
                  ),
                ]),
                ListView(children: [
                  Container(
                    margin: const EdgeInsets.only(top: 48, left: 36, right: 35),
                    width: 359,
                    height: 106,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: const BorderRadius.all(Radius.circular(2)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                            right: 244,
                            top: 19,
                            bottom: 26,
                            left: 29,
                            child: Image.asset('assets/pngegg (23) 1.png')),
                        Positioned(
                            left: 8,
                            top: 16,
                            bottom: 81,
                            right: 341,
                            child: Image.asset('assets/Vector (11).png')),
                        Positioned(
                            left: 318,
                            top: 73,
                            right: 13,
                            bottom: 11,
                            child: Image.asset('assets/Vector@2x.png')),
                        const Positioned(
                            top: 80,
                            left: 169,
                            right: 130,
                            bottom: 11,
                            child: FittedBox(
                              fit: BoxFit.none,
                              child: Text(
                                'AED 55.9',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            )),
                        const Positioned(
                            top: 51,
                            left: 169,
                            right: 178,
                            bottom: 44,
                            child: FittedBox(
                                fit: BoxFit.none,
                                child: Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.red,
                                ))),
                        const Positioned(
                            top: 52,
                            left: 185,
                            right: 158,
                            bottom: 43,
                            child: FittedBox(
                                fit: BoxFit.none,
                                child: Text(
                                  "5.0",
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.red),
                                ))),
                        const Positioned(
                            top: 16,
                            left: 130,
                            right: 81,
                            bottom: 79,
                            child: FittedBox(
                                fit: BoxFit.none,
                                child: Text(
                                  "White rice",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ))),
                        const Positioned(
                            top: 30,
                            left: 238,
                            right: 81,
                            bottom: 59,
                            child: FittedBox(
                                fit: BoxFit.none,
                                child: Text(
                                  "Pizza Margherita Vegetarian",
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                                )))
                      ],
                    ),
                  ),
                ]),
              ]),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xffFB6236),
                fixedSize: const Size(319, 59),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 77),
              ),
              child: const Center(
                child: Text(
                  'Scan Coupon',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xffFB6236),
                fixedSize: const Size(319, 59),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 77),
              ),
              child: const Center(
                child: Text(
                  'Show info',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
