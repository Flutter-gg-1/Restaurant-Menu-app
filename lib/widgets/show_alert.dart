import 'package:flutter/material.dart';

class ShowAlert extends StatelessWidget {
  const ShowAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text("This is an Alert"),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
              actions: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Center(
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color(0xffFB6236),
                          borderRadius: BorderRadius.circular(9)),
                      child: const Center(
                          child: Text(
                        "Close Alert",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                )
              ],
            );
          },
        );
      },
      child: Container(
        width: 320,
        height: 50,
        decoration: BoxDecoration(
            color: const Color(0xffFB6236),
            borderRadius: BorderRadius.circular(9)),
        child: const Center(
            child: Text(
          "Show Info",
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
