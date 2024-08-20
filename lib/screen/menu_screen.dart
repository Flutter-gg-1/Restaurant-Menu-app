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

  void _showInfoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          content: const Text(
            'Here is some information about the app!',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Close Alert',
                style: TextStyle(
                  color: AppColors.orange,
                ),
              ),
            ),
          ],
        );
      },
    );
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
            SizedBox(
              height: 160,
              child: Expanded(
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
                      title: const Text('Pizza Margherita',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: const Text('Pizza Margherita Vegetarian\n⭐ 5.0'),
                      trailing: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AED 55.9',
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
                      title: const Text('Cheese Burger',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: const Text('Bacon Cheeseburger\n⭐ 5.0'),
                      trailing: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AED 55.9',
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
                      title: const Text('Coca Cola',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: const Text('Can Coke\n⭐ 5.0'),
                      trailing: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AED 3.9',
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
                        width: 50,
                      ),
                    ),
                    CustomCard(
                      title: const Text('Cupcake Strawberry',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: const Text('Brown and Pink Dessert\n⭐ 5.0'),
                      trailing: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AED 10.9',
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
                        width: 80,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 330),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  useSafeArea: true,
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 200,
                      decoration: const BoxDecoration(
                        color: AppColors.orange,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Coupons',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(),
                          Text(
                            'Cheese Burger',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'ID',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'C13579246810',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    );
                  },
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppColors.orange),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              child: const Text('Scan Coupon'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showInfoDialog(context);
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppColors.orange),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              child: const Text('Show Info'),
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
        child: SizedBox(
          height: 220,
          child: ListTile(
            leading: image,
            title: title,
            subtitle: subtitle,
            trailing: trailing,
          ),
        ),
      ),
    );
  }
}
