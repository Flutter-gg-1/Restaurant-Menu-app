import 'package:flutter/material.dart';
import 'package:restaurant_menu_app/widget/food_card.dart';
import 'package:restaurant_menu_app/widget/food_view.dart';
import 'package:restaurant_menu_app/widget/foodoption.dart';
import 'package:restaurant_menu_app/widget/menu_button.dart';
import 'package:restaurant_menu_app/widget/menu_option.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
          title: const Text(
            'Menu',
            style: TextStyle(
                fontSize: 24,
                color: Color(0xFF484646),
                fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.center,
              dividerColor: Colors.transparent,
              dividerHeight: 0,
              labelColor: const Color(0xFF484646),
              indicator: BoxDecoration(
                  color: const Color(0xFFFB6236),
                  borderRadius: BorderRadius.circular(4)),
              onTap: (value) => setState(() {
                    tabIndex = value;
                  }),
              tabs: [
                MenuOption(
                  selected: tabIndex,
                  index: 0,
                  title: 'Dishes',
                ),
                MenuOption(
                  selected: tabIndex,
                  index: 1,
                  title: 'Pizza',
                ),
                MenuOption(
                  selected: tabIndex,
                  index: 2,
                  title: 'Burger',
                ),
                MenuOption(
                  selected: tabIndex,
                  index: 3,
                  title: 'Drinks',
                ),
                MenuOption(
                  selected: tabIndex,
                  index: 4,
                  title: 'Dessert',
                ),
              ]),
        ),
        body: const SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 54,
            ),
            FoodCard(),
            SizedBox(
              height: 280,
            ),
            MenuButton()
          ],
        )),
      ),
    );
  }
}
