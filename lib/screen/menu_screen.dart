import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lab2/core/constants/colors.dart';
import 'package:lab2/core/constants/images.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Menu'),
          bottom: TabBar(
            controller: _tabController,
            splashBorderRadius: BorderRadius.circular(50),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            labelColor: Colors.white,
            dividerColor: Colors.white,
            unselectedLabelColor: Colors.black,
            dragStartBehavior: DragStartBehavior.start,
            overlayColor: WidgetStateProperty.all(Colors.white),
            unselectedLabelStyle: const TextStyle(
              color: Colors.black,
            ),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffFB6236),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 2,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: const [
              Tab(text: 'Dishes'),
              Tab(text: 'Pizza'),
              Tab(text: 'Burger'),
              Tab(text: 'Drinks'),
              Tab(text: 'Dessert'),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  CustomCard(
                    title: const Text('White Rice',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: const Text('Basmati rice with Vegetable\n⭐ 4.5'),
                    trailing: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AED 45',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Icon(
                          Icons.add_circle,
                          color: AppColors.orange,
                        ),
                      ],
                    ),
                    image: Image.asset(
                      AppImages.dishes,
                      fit: BoxFit.cover,
                      width: 100,
                    ),
                  ),
                  CustomCard(
                    title: const Text('Pepperoni Pizza',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: const Text('Cheesy pizza with Pepperoni\n⭐ 4.7'),
                    trailing: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AED 55',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Icon(
                          Icons.add_circle,
                          color: AppColors.orange,
                        ),
                      ],
                    ),
                    image: Image.asset(
                      AppImages.pizza,
                      fit: BoxFit.cover,
                      width: 100,
                    ),
                  ),
                  CustomCard(
                    title: const Text('Beef Burger',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: const Text('Juicy beef burger\n⭐ 4.6'),
                    trailing: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AED 35',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Icon(
                          Icons.add_circle,
                          color: AppColors.orange,
                        ),
                      ],
                    ),
                    image: Image.asset(
                      AppImages.burger,
                      fit: BoxFit.cover,
                      width: 100,
                    ),
                  ),
                  CustomCard(
                    title: const Text('Lemonade',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: const Text('Fresh lemonade drink\n⭐ 4.2'),
                    trailing: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AED 15',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Icon(
                          Icons.add_circle,
                          color: AppColors.orange,
                        ),
                      ],
                    ),
                    image: Image.asset(
                      AppImages.drinks,
                      fit: BoxFit.cover,
                      width: 100,
                    ),
                  ),
                  CustomCard(
                    title: const Text('Chocolate Cake',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: const Text('Rich chocolate cake\n⭐ 4.8'),
                    trailing: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AED 25',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Icon(
                          Icons.add_circle,
                          color: AppColors.orange,
                        ),
                      ],
                    ),
                    image: Image.asset(
                      AppImages.dessert,
                      fit: BoxFit.cover,
                      width: 100,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('Custom Button'),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final Widget title;
  final Widget subtitle;
  final Widget trailing;
  final Widget image;

  const CustomCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.trailing,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          leading: image,
          title: title,
          subtitle: subtitle,
          trailing: trailing,
        ),
      ),
    );
  }
}
