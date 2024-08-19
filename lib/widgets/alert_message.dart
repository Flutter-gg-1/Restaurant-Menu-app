import 'package:flutter/material.dart';

class AlertMessage extends StatelessWidget {
  const AlertMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      backgroundColor: Colors.white,
      title: const SizedBox(
        height: 224,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is an Alert',
              style: TextStyle(
                  fontSize: 26.04,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(87, 50, 64, 1)),
            ),
          ],
        ),
      ),
      actions: [
        Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9)),
                  minimumSize: const Size.fromHeight(54),
                  fixedSize: const Size.fromWidth(225),
                  backgroundColor: const Color.fromRGBO(251, 98, 54, 1)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Close Alert',
                style: TextStyle(
                    fontSize: 26.04,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              )),
        )
      ],
    );
  }
}
