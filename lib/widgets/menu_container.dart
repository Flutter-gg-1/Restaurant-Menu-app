import 'package:flutter/material.dart';
import 'elevated_button.dart';

class MenuContainer extends StatelessWidget {
  final String photoBath;
  final String title;
  final String subtitle;
  final String rate;
  final String price;
  const MenuContainer(
      {super.key,
      required this.photoBath,
      required this.price,
      required this.rate,
      required this.subtitle,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Center(
          child: Container(
              height: 140,
              width: 359,
              decoration:
                  BoxDecoration(color: const Color(0xffffffff), boxShadow: [
                BoxShadow(color: Color(0xFF000000).withOpacity(0.5), blurRadius: 10)
              ]),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Stack(
                    clipBehavior: Clip.none, 
                    children: [
                    const Positioned(
                        bottom: 80,
                        child: Icon(
                          Icons.favorite_border,
                          size: 15,
                          color: Color(0xffFB6236),
                        )),
                    Image.asset(photoBath),
                  ]),
                  const SizedBox(
                    width: 22,
                  ),
                  SizedBox(
                    height: 110,
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              fontSize: 16,
                              color: Color(0xff484646),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(subtitle,
                            style: const TextStyle(
                              fontSize: 13,
                              color: Color(0xff484646),
                            )),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Color(0xffFB6236),
                              size: 14,
                            ),
                            Text(
                              rate,
                              style: const TextStyle(
                                  fontSize: 11,
                                  color: Color(0xffFB6236),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(price,
                                style: const TextStyle(
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(
                              width: 100,
                            ),
                            SizedBox(
                                height: 22,
                                width: 28,
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  backgroundColor: const Color(0xffFB6236),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3)),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                )),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )),
        ),
        const SizedBox(
          height: 350,
        ),
        const ElevatedButtonWidget(),
      ],
    );
  }
}
