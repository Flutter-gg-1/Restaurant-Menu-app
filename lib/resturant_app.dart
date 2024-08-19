import 'package:flutter/material.dart';
import 'package:resturant_app/food_item.dart';
import 'package:resturant_app/menu_item.dart';
import 'package:resturant_app/resturant_data.dart';

class ResturantApp extends StatefulWidget {
  const ResturantApp({super.key});

  @override
  State<ResturantApp> createState() => _ResturantAppState();
}

class _ResturantAppState extends State<ResturantApp> {

  int selected = 0;
  List<String> menuItems = ["Dishes","Pizza","Burger","Drinks","Dessert"];
  Map<String, Color> menuColors = {"selected" : const Color(0xffFB6236), "unselected" : Colors.white}; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Menu",
          style: TextStyle(
            color: Color(0xff484646),
            fontSize: 24,
            fontWeight: FontWeight.bold
            )
          ),
        ),
      body: SafeArea(
        child: DefaultTabController(
          length: 5,
          child: Column(
            children: [
              TabBar(
                labelPadding: const EdgeInsets.symmetric(horizontal: 10),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                indicatorColor: Colors.transparent,
                dividerColor: Colors.transparent,
                onTap: (value) {
                  setState(() {
                    selected = value;
                  });
                },
                tabs: List.generate(menuItems.length, (index){
                  return MenuItem(itemName: menuItems[index], color: selected==index ? menuColors['selected']! : menuColors['unselected']!);
                }),
              ),
              const SizedBox(height: 74,),
              Expanded(
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: List.generate(menu.length, (menuItemIndex){
                    return Center(
                      child: ListView.builder(
                        itemCount: menu[menuItemIndex].length,
                        itemBuilder: (context,foodItemIndex) {
                          return Center(
                          child: FoodItem(
                            foodDesc: menu[menuItemIndex][foodItemIndex]['food_desc'],
                            foodName: menu[menuItemIndex][foodItemIndex]['food_name'],
                            foodPic: menu[menuItemIndex][foodItemIndex]['food_pic'],
                            foodPrice: menu[menuItemIndex][foodItemIndex]['food_price'],
                            foodRate: menu[menuItemIndex][foodItemIndex]['food_rate']
                            )
                        );
                      })
                    );
                  })
                )
              ),
              SizedBox(
                height: 270,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                      showModalBottomSheet(context: context,backgroundColor: const Color(0xffFB6236) ,builder: (context){
                        return Container(
                          padding: const EdgeInsets.symmetric(horizontal: 17.36, vertical: 13.02),
                          width: 349,
                          height: 420,
                          decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(35.81))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Coupons",style: TextStyle(fontSize: 19.94, color: Colors.white, fontWeight: FontWeight.w500),),
                              const Divider(thickness: 0.5, color: Colors.white,),
                              const Text("Cheese Burger", style: TextStyle(fontSize: 29.91, color: Colors.white),),
                              const SizedBox(height: 26.04,),
                              const Text("ID", style: TextStyle(fontSize: 14.96, color: Colors.white),),
                              const Text("C13579246810", style: TextStyle(fontSize: 17.45, color: Colors.white),),
                              const SizedBox(height: 60.01,),
                              Image.asset("assets/qrcode.png")
                            ],
                          ),
                        );
                      });
                    }, style: ButtonStyle(fixedSize: WidgetStateProperty.all(const Size(319, 45)),shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(9))),backgroundColor: WidgetStateProperty.all<Color>(const Color(0xffFB6236))), child: const Text("Scan Coupon",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 19.94),)),
                    const SizedBox(height: 21,),
                    ElevatedButton(onPressed: (){
                      showDialog(context: context, builder: (context) {
                        return AlertDialog(
                          elevation: 10,
                          shadowColor: Colors.black,
                          contentPadding: const EdgeInsets.all(0),
                          actionsPadding: const EdgeInsets.only(bottom: 30),
                          alignment: Alignment.center,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                          content: Container(alignment: Alignment.center,width: 300, height: 200,child: const Text("This is an Alert", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 26.04, color: Color(0xff573240)),)),
                          actions: [
                            Center(child: ElevatedButton(onPressed: (){
                              Navigator.pop(context);
                            }, style: ButtonStyle(fixedSize: WidgetStateProperty.all(const Size(225, 45)),shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(9))),backgroundColor: WidgetStateProperty.all(const Color(0xffFB6236))),child: const Text('Close alert', style: TextStyle(fontSize: 26.04, fontWeight: FontWeight.w500, color: Colors.white),)))
                          ],
                        );
                      });
                    }, style: ButtonStyle(fixedSize: WidgetStateProperty.all(const Size(319, 45)),shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(9))),backgroundColor: WidgetStateProperty.all<Color>(const Color(0xffFB6236))), child: const Text("Show info",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500,fontSize: 19.94))),
                  ],
                )
              ),
          ])
        )
      )
    );
  }
}