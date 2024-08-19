import 'package:flutter/material.dart';
import 'package:restaurant_challenge/widgets/burger.dart';
import 'package:restaurant_challenge/widgets/dessert.dart';
import 'package:restaurant_challenge/widgets/drinks.dart';
import 'package:restaurant_challenge/widgets/pizza.dart';
import 'package:restaurant_challenge/widgets/rice.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  MenuState createState() => MenuState();
}

class MenuState extends State<Menu> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      setState(() {}); 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        bottom:
        
         TabBar(
          dividerColor: Colors.transparent,
          controller: _tabController,
          indicatorColor:
              Colors.transparent,
          tabs: [
            _buildTab('Dishes', 0),
            _buildTab('Pizza', 1),
            _buildTab('Burger', 2),
            _buildTab('Drinks', 3),
            _buildTab('Dessert', 4),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Rice(),
          Pizza(),
          Burger(),
          Drinks(),
          Dessert()
      ],
      ),
    );
  }

  Widget _buildTab(String text, int index) {
    bool isSelected = _tabController.index == index;

    return Container(
      height: 30,
      width: 80,
      decoration: BoxDecoration(
          color: isSelected ? const Color(0xffFB6236) : Colors.white,
          boxShadow: const [
            BoxShadow(offset: Offset(0, 5), blurRadius: 6, color: Colors.grey),
          ],
          borderRadius: BorderRadius.circular(4)),
      child: Center(
          child: Text(text,
              style: isSelected
                  ? const TextStyle(fontSize: 10, color: Colors.white)
                  : const TextStyle(fontSize: 10))),
    );
  }
}
