
import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => showModalBottomSheet(
            backgroundColor: const Color(0xFFFB6236),
            context: context,
            builder: (context) => Container(
              width: 349,
              height: 550,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(41),
                      topRight: Radius.circular(41)),
                  color: Color(0xFFFB6236)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '   Coupons',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                    thickness: 0.3,
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  const Column(
                    children: [
                      Text(
                        '    Cheese Burger',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      Text(
                        'ID\nC13579246810',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 47,
                  ),
                  Center(
                    child: Container(
                      width: 172,
                      height: 172,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.white),
                      child: Image.asset('assest/image/barcode.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          child: Container(
            width: 319,
            height: 54,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: const Color(0xFFFB6236)),
            child: const Center(
                child: Text(
              'Scan Coupon',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            )),
          ),
        ),
        const SizedBox(
          height: 21,
        ),
        InkWell(
          onTap: () => showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) => AlertDialog(
              backgroundColor: Colors.white,
              content: Container(
                width: 319,
                height: 294,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'This is an Alert',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF573240)),
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        width: 225,
                        height: 54,
                        margin: const EdgeInsets.only(top: 80),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: const Color(0xFFFB6236)),
                        child: const Center(
                            child: Text(
                          'Close alert',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          child: Container(
            width: 319,
            height: 54,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: const Color(0xFFFB6236)),
            child: const Center(
                child: Text(
              'Show info',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            )),
          ),
        ),
      ],
    );
  }
}
