import 'package:flutter/material.dart';

/// Flutter code sample for [TabBar].

void main() => runApp(const TabBarApp());

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const TabBarExample(),
    );
  }
}

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Menu'),
          centerTitle: false,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TabBar(
                indicatorColor: Color(0xffFB236),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Color(0xffFB6236),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                dividerColor: Colors.transparent,
                // TO hide the default divider
                indicatorSize: TabBarIndicatorSize.tab,

                //
                tabs: [
                  Container(child: Tab(text: 'Dishes')),
                  Container(child: Tab(text: 'Pizza')),
                  Container(child: Tab(text: 'Burger')),
                  Container(child: Tab(text: 'Drinks')),
                  Container(child: Tab(text: 'Dessert')),
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: TabBarView(
                  children: [
                    /*
                    *
                    * Tab bar view 1
                    *
                    * */
                    ListView(
                      padding: EdgeInsets.all(5),
                      children: [
                        Stack(clipBehavior: Clip.none, children: [
                          Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ListTile(
                              leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/pngegg.png',
                                  )),
                              title: Text(
                                'White Rice',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Basmati rice with Vegetable'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Color(0xffFB6236), size: 16),
                                      Text('4.5',
                                          style: TextStyle(
                                              color: Color(0xffFB6236))),
                                    ],
                                  ),

                                  /*
                                  *
                                  * Price and add icon
                                  *
                                  * */
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('AED 45',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                      IconButton(
                                        icon: Icon(Icons.add_box_rounded,
                                            color: Color(0xffFB6236)),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 15,
                            left: 10,
                            child: Image.asset(
                              'assets/vector.png',
                              // fit: BoxFit.cover,
                            ),
                          )
                        ]),
                      ],
                    ),

                    /*
                    *
                    * Tab bar view 2
                    *
                    * */
                    ListView(
                      padding: EdgeInsets.all(5),
                      children: [
                        Stack(clipBehavior: Clip.none, children: [
                          Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ListTile(
                              leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/piza.png',
                                  )),
                              title: Text(
                                'Pizza Margherita',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Pizza Margherita Vegetarian'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Color(0xffFB6236), size: 16),
                                      Text('5',
                                          style: TextStyle(
                                              color: Color(0xffFB6236))),
                                    ],
                                  ),

                                  /*
                                  *
                                  * Price and add icon
                                  *
                                  * */
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('AED 55.9',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                      IconButton(
                                        icon: Icon(Icons.add_box_rounded,
                                            color: Color(0xffFB6236)),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 15,
                            left: 10,
                            child: Image.asset(
                              'assets/vector.png',
                              // fit: BoxFit.cover,
                            ),
                          )
                        ]),
                      ],
                    ),

                    /*
                    *
                    * Tab bar view 3
                    *
                    * */
                    ListView(
                      padding: EdgeInsets.all(5),
                      children: [
                        Stack(clipBehavior: Clip.none, children: [
                          Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ListTile(
                              leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/burrgr.png',
                                  )),
                              title: Text(
                                'Cheese Burger',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Bacon Cheeseburger'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Color(0xffFB6236), size: 16),
                                      Text('5',
                                          style: TextStyle(
                                              color: Color(0xffFB6236))),
                                    ],
                                  ),

                                  /*
                                  *
                                  * Price and add icon
                                  *
                                  * */
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('AED 55.9',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                      IconButton(
                                        icon: Icon(Icons.add_box_rounded,
                                            color: Color(0xffFB6236)),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 15,
                            left: 10,
                            child: Image.asset(
                              'assets/vector.png',
                              // fit: BoxFit.cover,
                            ),
                          )
                        ]),
                      ],
                    ),

                    /*
                    *
                    * Tab bar view 5
                    *
                    * */
                    ListView(
                      padding: EdgeInsets.all(5),
                      children: [
                        Stack(clipBehavior: Clip.none, children: [
                          Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ListTile(
                              leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/coca.png',
                                  )),
                              title: Text(
                                'Coca Cola',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Can Coke'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Color(0xffFB6236), size: 16),
                                      Text('4.5',
                                          style: TextStyle(
                                              color: Color(0xffFB6236))),
                                    ],
                                  ),

                                  /*
                                  *
                                  * Price and add icon
                                  *
                                  * */
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('AED 3.5',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                      IconButton(
                                        icon: Icon(Icons.add_box_rounded,
                                            color: Color(0xffFB6236)),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 15,
                            left: 10,
                            child: Image.asset(
                              'assets/vector.png',
                              // fit: BoxFit.cover,
                            ),
                          )
                        ]),
                      ],
                    ),

                    /*
                    *
                    * Tab bar view 5
                    *
                    * */
                    ListView(
                      padding: EdgeInsets.all(5),
                      children: [
                        Stack(clipBehavior: Clip.none, children: [
                          Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ListTile(
                              leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/dessert.png',
                                  )),
                              title: Text(
                                'White Rice',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Basmati rice with Vegetable'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Color(0xffFB6236), size: 16),
                                      Text('4.5',
                                          style: TextStyle(
                                              color: Color(0xffFB6236))),
                                    ],
                                  ),

                                  /*
                                  *
                                  * Price and add icon
                                  *
                                  * */
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('AED 45',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold)),
                                      IconButton(
                                        icon: Icon(Icons.add_box_rounded,
                                            color: Color(0xffFB6236)),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 15,
                            left: 10,
                            child: Image.asset(
                              'assets/vector.png',
                              // fit: BoxFit.cover,
                            ),
                          )
                        ]),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Container(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (builder) {
                                return Container(
                                  height: 450,
                                  width: 350,
                                  //color: Colors.transpwarent,
                                  //could change this to Color(0xFF737373),
                                  //so you don't have to change MaterialApp canvasColor
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xffFB6236),
                                          borderRadius: BorderRadius.only(
                                              topLeft:
                                                  const Radius.circular(20.0),
                                              topRight:
                                                  const Radius.circular(20.0))),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Coupons',
                                                  style: TextStyle(
                                                    fontSize: 19,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Cheese Burger',
                                              style: TextStyle(
                                                fontSize: 26,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('ID',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16)),
                                                Text('C13579246810',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16)),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Center(
                                            child: Image.asset('assets/qr.png'),
                                          )
                                        ],
                                      )),
                                );
                              });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFB6236),
                          padding: EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          'Scan Coupon',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {
                          showAlertDialog(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFB6236),
                          padding: EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          'Show info',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text(
      'Cancel alert',
      style: TextStyle(color: Colors.white),
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xffFB6236),
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3),
      ),
    ),
    onPressed: () {
      Navigator.pop(
          context); // dismiss the dialog when Cancel button is pressed
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    content: Container(
        height: 140,
        width: 170,
        child: Center(
            child: Text(
          "This is an Alert",
          style: TextStyle(fontSize: 20),
        ))),
    actions: [
      Center(child: cancelButton),
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
