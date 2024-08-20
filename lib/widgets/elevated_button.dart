import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatefulWidget {
  const ElevatedButtonWidget({super.key});

  @override
  State<ElevatedButtonWidget> createState() => _ElevatedButtonWidgetState();
}

class _ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
                height: 54,
                width: 319,
                child: ElevatedButton(
                  onPressed: () {
                    showBottomSheet(context: context, builder: (BuildContext context){
                      return Container(
                        height: 450,
                        width: 349,
                        decoration: const BoxDecoration(color: Color(0xffFB6236),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(35.81), topRight: Radius.circular(35.81))),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 200, top: 20),
                              child: Text("Coupons", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),),
                            ),
                            const Divider(),
                            const Padding(
                              padding: EdgeInsets.only(right: 90, top: 20),
                              child: Text("Cheese Burger", style: TextStyle(fontSize: 28, color: Colors.white),),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 260, top: 20),
                              child: Text("ID", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right:150,),
                              child: Text("C13579246810", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40),
                              child: Image.asset("assets/Code.png"),
                            ),
                            
        
                          ],
                        ),
                      );
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9)),
                      backgroundColor: const Color(0xffFB6236)),
                  child: const Text(
                    "Scan Coupon",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                )),
                const SizedBox(
          height: 21,
        ),
        SizedBox(
            height: 54,
            width: 319,
            child: ElevatedButton(
              onPressed: () {
                showDialog(context: context, builder: (BuildContext context){
                  return AlertDialog(
                    backgroundColor: Colors.white,
                    title: const Center(child: Text("This is an Alert", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),)),
                    titlePadding: const EdgeInsets.only(top: 101),
                    actionsPadding: const EdgeInsets.only(top: 77, bottom: 30),
                    actionsAlignment: MainAxisAlignment.center,
                    actions: [
                      SizedBox(
                        height: 45,
                        width: 180,
                        child: ElevatedButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, 
                        style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(9)),
                                      backgroundColor: const Color(0xffFB6236)),
                        child: const Text("Close alert", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),)),
                      )
                    ],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                  );
                });
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9)),
                  backgroundColor: const Color(0xffFB6236)),
              child: const Text(
                "Show info",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ))
      ],
    );
        
  }
}