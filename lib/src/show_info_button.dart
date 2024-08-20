import 'package:flutter/material.dart';

// widget of show info button
Widget showInfoButton({required context}) {
  return ElevatedButton(
    onPressed: () => showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),),
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
          
          
          child: Text("This is an Alert", style: TextStyle(fontSize: 30)),
        ),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffFB6236),
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              elevation: 5,
            ),
            onPressed: () => Navigator.pop(context, "Close alert"),
            child: const Text("Close alert",
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
        ],
      ),
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xffFB6236),
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 7),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
      ),
      elevation: 5,
    ),
    child: const Text(
      "Show info",
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
  );
}
