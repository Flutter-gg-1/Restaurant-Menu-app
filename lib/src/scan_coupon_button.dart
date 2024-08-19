import 'package:flutter/material.dart';

// scan bottom sheet using scan coupon button
Widget scanCouponButton({required context, required food}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xffFB6236),
      padding: const EdgeInsets.symmetric(horizontal: 84, vertical: 7),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
      ),
      elevation: 5,
    ),
    onPressed: () {
      showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 450,
            width: 330,
            decoration: const BoxDecoration(
              color: Color(0xffFB6236),
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text("Coupons",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(food,
                      style:
                          const TextStyle(fontSize: 30, color: Colors.white)),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("ID \n C13579246810",
                      style: TextStyle(fontSize: 17, color: Colors.white)),
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset("assets/Code.png"),
                ],
              ),
            ),
          );
        },
      );
    },
    child: const Text("Scan Coupon",
        style: TextStyle(color: Colors.white, fontSize: 20)),
  );
}
