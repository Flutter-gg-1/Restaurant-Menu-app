import 'package:flutter/material.dart';

class Drinks extends StatefulWidget {
  const Drinks({super.key});

  @override
  State<Drinks> createState() => _DrinksState();
}

class _DrinksState extends State<Drinks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Center(
          child: Container(
            height: 150,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 10, offset: Offset(-3, 8))
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(
                //   height: 30,
                // ),
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: Image.asset(
                          'assets/Vector.png',
                          height: 15,
                          width: 30,
                        )),
                    // SizedBox(
                    //   width: 70,
                    // ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset('assets/soft-drink.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Coca Cola",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Can Coke"),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xffFB6236),
                            ),
                            Text(
                              " 5.0",
                              style: TextStyle(color: Color(0xffFB6236)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "AED 3.9",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 130,
                            ),
                            Image.asset("assets/Vector_pluse.png")
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 300,
        ),
        InkWell(
          onTap: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    height: 450,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0xffFB6236),
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(15))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "  Coupons",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 1,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "  Cheese Burger",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "   ID",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          "   C13579246810",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                            child: Image.asset(
                          "assets/Code.png",
                        ))
                      ],
                    ),
                  );
                });
          },
          child: Container(
              height: 54,
              width: 319,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Color(0xffFB6236),
              ),
              child: Center(
                child: Text(
                  "Scan Coupon",
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ),
        SizedBox(
          height: 21,
        ),
        InkWell(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                      backgroundColor: Colors.white,
                      // title: const Text('AlertDialog Title'),
                      content:
                          //  const Text('AlertDialog description'),
                          Container(
                        height: 294,
                        width: 319,
                        // color: Colors.white,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 70,
                            ),
                            Text(
                              "This is an Alert",
                              style: TextStyle(fontSize: 26),
                            ),
                            SizedBox(height: 60),
                            Container(
                                height: 54,
                                width: 225,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xffFB6236),
                                ),
                                child: Center(
                                  child: Text(
                                    "Close alert",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 26),
                                  ),
                                ))
                          ],
                        ),
                      ));
                });
          },
          child: Container(
              height: 54,
              width: 319,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Color(0xffFB6236),
              ),
              child: Center(
                child: Text(
                  "Show info",
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ),
      ],
    ));
  }
}
