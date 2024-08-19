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
              )
          ])
        )
      )
    );
  }
}