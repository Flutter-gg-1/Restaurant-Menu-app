import 'package:flutter/material.dart';

void showAlert(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actionsAlignment: MainAxisAlignment.center,
          contentTextStyle:
              const TextStyle(color: Color(0xff484646), fontSize: 26.04),
          content: Container(
            alignment: Alignment.center,
            height: 200,
            width: 319,
            child: const Text("This is an Alert"),
          ),
          actions: [
            ElevatedButton(
                style: ButtonStyle(
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9))),
                    backgroundColor:
                        WidgetStateProperty.all(const Color(0xffFB6236)),
                    fixedSize: WidgetStateProperty.all(const Size(225, 54))),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Close alert",
                    style: TextStyle(color: Colors.white, fontSize: 26.04))),
            const SizedBox(height: 80)
          ],
        );
      });
}
