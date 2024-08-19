import 'package:flutter/material.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                width: 320,
                height: 400,
                decoration: const BoxDecoration(
                    color: Color(0xffFB6236),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(28),
                        topRight: Radius.circular(28))),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Coupons",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const Divider(),
                      const Text(
                        "Cheese Burger",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "ID",
                        style: TextStyle(color: Colors.white),
                      ),
                      const Text(
                        "C13579246810",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Image.asset("assets/Code.png")
                    ],
                  ),
                ),
              );
            });
      },
      child: Container(
        width: 320,
        height: 50,
        decoration: BoxDecoration(
            color: const Color(0xffFB6236),
            borderRadius: BorderRadius.circular(9)),
        child: const Center(
            child: Text(
          "Scan Coupon",
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
