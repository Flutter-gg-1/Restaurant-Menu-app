import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_menu/src/food_card.dart';
import 'package:restaurant_menu/src/scan_coupon_button.dart';
import 'package:restaurant_menu/src/show_info_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Menu",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            bottom: TabBar(
                labelColor: Colors.white,
                labelPadding: const EdgeInsets.symmetric(
                  horizontal: 6,
                ),
                dividerHeight: 0,
                indicatorSize: TabBarIndicatorSize.tab,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                indicator: ShapeDecoration(
                  color: const Color(0xffFB6236),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  shadows: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 89, 89, 89)
                          .withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                tabs: [
                  Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(0, 2),
                              blurRadius: 4,
                              spreadRadius: 1,
                              blurStyle: BlurStyle.outer),
                        ],
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Dishes",
                            style: GoogleFonts.adamina(
                              fontSize: 14,
                            ),
                          ))),
                           Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(0, 2),
                              blurRadius: 4,
                              spreadRadius: 1,
                              blurStyle: BlurStyle.outer),
                        ],
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child:
                  Text("Pizza",
                      style: GoogleFonts.adamina(
                        fontSize: 14,
                      )),)),
                       Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(0, 2),
                              blurRadius: 4,
                              spreadRadius: 1,
                              blurStyle: BlurStyle.outer),
                        ],
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child:
                  Text("Burger",
                      style: GoogleFonts.adamina(
                        fontSize: 14,
                      )),)),
                       Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(0, 2),
                              blurRadius: 4,
                              spreadRadius: 1,
                              blurStyle: BlurStyle.outer),
                        ],
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child:
                  Text("Drinks",
                      style: GoogleFonts.adamina(
                        fontSize: 14,
                      )),)),
                       Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(0, 2),
                              blurRadius: 4,
                              spreadRadius: 1,
                              blurStyle: BlurStyle.outer),
                        ],
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child:
                  Text(
                    "Dessert",
                    style: GoogleFonts.adamina(
                      fontSize: 14,
                    ),))
                  ),
                ]),
          ),
          body: TabBarView(children: [
            Column(
              children: [
                foodCard(
                    image: "assets/pngegg (42) 3.png",
                    title: "White Rice",
                    subTitle: "Basmati rice with Vegetable",
                    rating: "4.5",
                    price: "45"),
                const SizedBox(
                  height: 350,
                ),
                scanCouponButton(context: context, food: "White Rice"),
                const SizedBox(
                  height: 10,
                ),
                showInfoButton(context: context)
              ],
            ),
            Column(
              children: [
                foodCard(
                    image: "assets/pngegg (23) 1.png",
                    title: "Pizza Margherita",
                    subTitle: "Pizza Margherita Vegetarian",
                    rating: "5.0",
                    price: "55.9"),
                const SizedBox(
                  height: 350,
                ),
                scanCouponButton(context: context, food: "Pizza Margherita"),
                const SizedBox(
                  height: 10,
                ),
                showInfoButton(context: context)
              ],
            ),
            Column(
              children: [
                foodCard(
                    image: "assets/pngegg (18) 1.png",
                    title: "Cheese Burger",
                    subTitle: "Bacon Cheeseburger",
                    rating: "5.0",
                    price: "55.9"),
                const SizedBox(
                  height: 350,
                ),
                scanCouponButton(context: context, food: "Cheese Burger"),
                const SizedBox(
                  height: 10,
                ),
                showInfoButton(context: context)
              ],
            ),
            Column(
              children: [
                foodCard(
                    image: "assets/pngegg (36) 1.png",
                    title: "Coca Cola",
                    subTitle: "Can Coke",
                    rating: "5.0",
                    price: "3.9"),
                const SizedBox(
                  height: 350,
                ),
                scanCouponButton(context: context, food: "Coca Cola"),
                const SizedBox(
                  height: 10,
                ),
                showInfoButton(context: context)
              ],
            ),
            Column(
              children: [
                foodCard(
                    image: "assets/pngegg (33) 1.png",
                    title: "Cupcake Strawberry ",
                    subTitle: "Brown and Pink Dessert",
                    rating: "5.0",
                    price: "10.9"),
                const SizedBox(
                  height: 350,
                ),
                scanCouponButton(context: context, food: "Cupcake Strawberry "),
                const SizedBox(
                  height: 10,
                ),
                showInfoButton(context: context)
              ],
            ),
          ]),
        ));
  }
}
