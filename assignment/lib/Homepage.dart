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
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            centerTitle: false,
            title: const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Text('Menu', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            bottom: 
            ButtonsTabBar(
              elevation:6,
              buttonMargin: const EdgeInsets.fromLTRB(7, 5, 7, 5),
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
         body: const Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    SizedBox(height: 16.0),
    Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 25, left: 25.0),
        child: TabBarView(
          children: [
            Card(img: "asset/rice.png", title: "White Rice", desc: "Basmati rice with Vegetable", rate: "4.5", price: "AED 45",),
            Card(img: "asset/pizza.png", title: "Pizza Margherita", desc: "Pizza Margherita Vegetarian", rate: "5.0", price: "AED 55.9",),
            Card(img: "asset/burger.png", title: "Cheese Burger", desc: "Cheese Burger", rate: "5.0", price: "Cheese Burger",),
            Card(img: "asset/cola.png", title: "Coca Cola", desc: "Can Cola", rate: "4.5", price: "AED 3.9",),
            Card(img: "asset/cake.png", title: "Cupcake Strawberry", desc: "Brown and Pink Dessert", rate: "4.5", price: "AED 10.9",),
          ],
        ),
      ),
    ),
  ],
),
        ),
      ),
    );
  }
}
class Card extends StatelessWidget {

  final String img;
  final String title;
  final String desc;
  final String rate;
  final String price;
  
  const Card({super.key, required this.img, required this.title, required this.desc, required this.rate, required this.price});
  @override
  Widget build(BuildContext context) {
    return Column( 
      children: [ Container(
      margin: const EdgeInsets.fromLTRB(1, 10, 10, 1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10), //border corner radius
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.16),
            spreadRadius: 7,
            blurRadius: 6,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // First column
            const Icon(
              Icons.favorite_border,
              color: Color.fromARGB(255, 251, 97, 54),
              size: 24.0,
            ),
            const SizedBox(width: 8.0),
            // Second column
             Image.asset(img),
            
            const SizedBox(width: 8.0),
            // Third column
             Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // First row
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),

                  // Second row
                  Text(desc, style: const TextStyle(fontSize: 13)),

                  // Third row
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 251, 97, 54),
                        size: 16.0,
                      ),
                      Text(
                        rate,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                          color: Color.fromARGB(255, 251, 97, 54),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),

                  // Fourth row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.add_box,
                            color: Color.fromARGB(255, 251, 97, 54),
                            size: 20,
                          ),
                          SizedBox(width: 4.0),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
    ),
          const Spacer(),
      ElevatedButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context){
            return Container(
              color: Color.fromARGB(255, 251, 97, 54),
              height: 400,
              width: 330,
                child: Column(
                  children: [
                    Text('Coupons',  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 255, 255, 255))),
                    Text('Cheese Burger', style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 255, 255, 255))),
                    Text('ID', style: TextStyle(fontSize: 11, color: const Color.fromARGB(255, 255, 255, 255))),
                    Text('C1487837237208', style: TextStyle(fontSize: 11, color: const Color.fromARGB(255, 255, 255, 255))),
                    Image.asset('asset/Code.png'),
                  ],

                
              ),           );
          });
        },
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(300, 40),
          backgroundColor: const Color.fromARGB(255, 251, 97, 54),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          foregroundColor: Colors.white, 
        ),
        child: const Text('Scan Coupon'),
      ),
      const SizedBox(height: 8.0),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(300, 40),
          backgroundColor: const Color.fromARGB(255, 251, 97, 54),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          foregroundColor: Colors.white, 
        ),
        child: const Text('Show info'),
      ),
              const SizedBox(height: 150.0),
              ]

    );
  }
}