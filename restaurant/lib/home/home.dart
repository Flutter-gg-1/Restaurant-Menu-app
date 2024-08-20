import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/mock_data.dart';
import '../constants.dart';
import '../model/item.dart';
import 'category_picker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showSheet(BuildContext context) => showModalBottomSheet(
      elevation: 10,
      backgroundColor: C.orange,
      context: context,
      builder: (ctx) => Container(
            width: 300,
            height: 250,
            color: Colors.white54,
            alignment: Alignment.center,
            child: const Text('Breathe in... Breathe out...'),
          ));

  void _showAlert() => print('');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Menu', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  CategoryPicker(),
                  const Spacer(flex: 2),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      children: [
                        CustomBtn(title: 'Scan Coupon', isAlert: false),
                        const SizedBox(height: 24),
                        CustomBtn(title: 'Show Info', isAlert: true),
                      ],
                    ),
                  ),
                  const Spacer(flex: 1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBtn extends StatelessWidget {
  CustomBtn({
    super.key,
    required this.title,
    required this.isAlert,
  });

  final String title;
  bool isAlert;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(16),
              backgroundColor: C.orange,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () => (),
            child: Text(title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                )),
          ),
        ),
      ],
    );
  }
}
