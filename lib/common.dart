import 'package:flutter/material.dart';

Widget myContainer() {
  return Container(
    width: 359,
    height: 190,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          blurRadius: 7,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      children: [
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Row(
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.favorite_border),
                  SizedBox(width: 100),
                  Text('White Rice',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        ),
        Row(
          children: [
            Row(children: [
              Image.asset('assets/1.png', width: 100),
              const SizedBox(width: 20),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Basmati rice with Vegetable',
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Color.fromRGBO(251, 98, 54, 1)),
                      Text(
                        '4.5',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(251, 98, 54, 1)),
                      ),
                    ],
                  ),
                  Text('AED 45', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ])
          ],
        ),
        Padding(
            padding: const EdgeInsets.only(left: 290, top: 30),
            child: Builder(builder: (context) {
              return FloatingActionButton(
                onPressed: () {
                  // Show Alert Dialog
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Add item to cart'),
                          content: const Text(' added successfully '),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      });
                },
                backgroundColor: Colors.white,
                child: Image.asset('assets/b.png'),
              );
            })),
      ],
    ),
  );
}

Widget myButton() {
  return Column(
    children: [
      const SizedBox(height: 250),
      ElevatedButton(
          style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            backgroundColor: WidgetStateProperty.all<Color>(
                const Color.fromRGBO(251, 98, 54, 1)),
          ),
          onPressed: () {},
          child: const Text(
            'Scan Coupon',
            style: TextStyle(color: Colors.white),
          )),
      const SizedBox(height: 25),
      ElevatedButton(
          style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            backgroundColor: WidgetStateProperty.all<Color>(
                const Color.fromRGBO(251, 98, 54, 1)),
          ),
          onPressed: () {},
          child: const Text(
            'Show info',
            style: TextStyle(color: Colors.white),
          )),
      const SizedBox(height: 25),
    ],
  );
}
