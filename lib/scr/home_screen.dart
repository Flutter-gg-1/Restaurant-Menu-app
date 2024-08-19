import 'package:flutter/material.dart';
import 'package:flutter_lab_3/scr/customWidgets/order_widget.dart';
import 'package:flutter_lab_3/scr/show_alert.dart';
import 'package:flutter_lab_3/scr/customWidgets/tap_custom_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          titleTextStyle: const TextStyle(
              color: Color(0xff484646),
              fontSize: 24,
              fontWeight: FontWeight.bold),
          title: const Text("Menu"),
          bottom: const TabBar(
              labelPadding: EdgeInsets.all(0),
              labelStyle: TextStyle(color: Colors.white),
              dividerHeight: 0,
              indicator: BoxDecoration(
                  color: Color(0xffFB6236),
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2,
                        blurStyle: BlurStyle.outer)
                  ]),
              tabs: [
                TapCustomStyle(title: "Dishes"),
                TapCustomStyle(title: "Pizza"),
                TapCustomStyle(title: "Burger"),
                TapCustomStyle(title: "Drinks"),
                TapCustomStyle(title: "dessert")
              ]),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Expanded(
                child: TabBarView(clipBehavior: Clip.none, children: [
                  OrderWidget(
                      name: "White Rice",
                      description: "Basmati rice with Vegetable",
                      rate: "4.5",
                      price: "AED 45",
                      imageUrl: "assets/rice.png"),
                  OrderWidget(
                      name: "Pizza Margherita",
                      description: "Pizza Margherita Vegetarian",
                      rate: "5.0",
                      price: "AED 55.9",
                      imageUrl: "assets/pizza.png"),
                  OrderWidget(
                      name: "Cheese Burger",
                      description: "Bacon Cheeseburger",
                      rate: "5.0",
                      price: "AED 55.9",
                      imageUrl: "assets/burger.png"),
                  OrderWidget(
                      name: "Coca Cola",
                      description: "Can Coke",
                      rate: "5.0",
                      price: "AED 3.9",
                      imageUrl: "assets/drink.png"),
                  OrderWidget(
                      name: "Cupcake Strawberry ",
                      description: "Brown and Pink Dessert",
                      rate: "5.0",
                      price: "AED 10.9",
                      imageUrl: "assets/dessert.png"),
                ]),
              ),
              const SizedBox(
                height: 300,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4))),
                      backgroundColor:
                          WidgetStateProperty.all(const Color(0xffFB6236)),
                      fixedSize: WidgetStateProperty.all(const Size(319, 54))),
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            decoration: const BoxDecoration(
                                color: Color(0xffFB6236),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),
                                    topRight: Radius.circular(25))),
                            padding: const EdgeInsets.all(10),
                            height: 548.43,
                            width: 349,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("coupons",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 19.94)),
                                const Divider(),
                                const SizedBox(height: 10),
                                const Text("Cheese Burger",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 29.91)),
                                const SizedBox(height: 20),
                                const Text("ID",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17.45)),
                                const Text("C13579246810",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17.45)),
                                const SizedBox(height: 80),
                                Image.asset("assets/Code.png")
                              ],
                            ),
                          );
                        });
                  },
                  child: const Text("Scan Coupon",
                      style: TextStyle(color: Colors.white, fontSize: 19.94))),
              const SizedBox(height: 15),
              ElevatedButton(
                  style: ButtonStyle(
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4))),
                      backgroundColor:
                          WidgetStateProperty.all(const Color(0xffFB6236)),
                      fixedSize: WidgetStateProperty.all(const Size(319, 54))),
                  onPressed: () {
                    showAlert(context);
                  },
                  child: const Text("Show info",
                      style: TextStyle(color: Colors.white, fontSize: 19.94))),
              const SizedBox(height: 80)
            ],
          ),
        ),
      ),
    );
  }
}
