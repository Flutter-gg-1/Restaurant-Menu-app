import 'package:flutter/material.dart';

// widget of show info button
Widget showInfoButton({required context}) {
  return ElevatedButton(
    
    onPressed: () => showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text("This is an Alert"),
        actions:[
          TextButton(
            onPressed: () => Navigator.pop(context, "Close alert"),
            child: const Text("Close alert"),
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
