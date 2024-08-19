import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this)
      ..addListener(() {
        setState(() {
          _currentIndex = _tabController!.index;
        });
      });
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        title: Text(
          'Menu',
          style: TextStyle(
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(72, 70, 70, 1),
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: false,
         shadowColor: Colors.transparent,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [
          // TabBar for Categories
          DefaultTabController(
            length: 5,
            child: Column(
              children: [
                TabBar(
                  dividerColor: Colors.transparent,
                  controller: _tabController,
                  isScrollable: true,
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicatorPadding: EdgeInsets.symmetric(
                      horizontal: 0.0), // Reduced space between tabs
                  tabs: [
                    _buildFloatingTab('Dishes',
                        isSelected: _tabController!.index == 0),
                    _buildFloatingTab('Pizza',
                        isSelected: _tabController!.index == 1),
                    _buildFloatingTab('Burger',
                        isSelected: _tabController!.index == 2),
                    _buildFloatingTab('Drinks',
                        isSelected: _tabController!.index == 3),
                    _buildFloatingTab('Dessert',
                        isSelected: _tabController!.index == 4),
                  ],
                ),
                Container(
                  height: 160,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      _buildMenuCard(0),
                      _buildMenuCard(1),
                      _buildMenuCard(2),
                      _buildMenuCard(3),
                      _buildMenuCard(4),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 250),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: Color.fromRGBO(251, 98, 54, 1),
                minimumSize: Size(319, 54),
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      
                      top: Radius.circular(35.81),
                    ),
                  ),
                  builder: (context) {
                    return _buildCouponBottomSheet(_currentIndex);
                  },
                );
              },
              child: Text(
                'Scan Coupon',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: Color.fromRGBO(251, 98, 54, 1),
                minimumSize: Size(319, 54),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9.0),
                      ),
                      child: Container(
                        width: 319,
                        height: 294,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'This is an Alert',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 26.04,
                                      fontFamily: 'Roboto',
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(251, 98, 54, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9.0),
                                  ),
                                  minimumSize: Size(225, 54),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  'Close Alert',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 26.04,
                                    fontFamily: 'Roboto',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              child: Text(
                'Show info',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFloatingTab(String text, {required bool isSelected}) {
    return Tab(
      child: Container(
        width: 64,
        height: 33,
        decoration: BoxDecoration(
          color: isSelected
              ? Color.fromRGBO(251, 98, 54, 1)
              : Colors.white, // Change color based on selection
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 14,
          ),
        )),
      ),
    );
  }

  Widget _buildMenuCard(int index) {
    List<Map<String, String>> menuItems = [
      {
        'name': 'White Rice',
        'description': 'Basmati rice with Vegetable',
        'price': 'AED 45',
        'image': 'assets/images/white_rice.png',
        'rate': '4.5'
      },
      {
        'name': 'Pizza Margherita',
        'description': 'Pizza Margherita Vegetarian',
        'price': 'AED 55.9',
        'image': 'assets/images/pizza_margherita.png',
        'rate': '5.0'
      },
      {
        'name': 'Cheese Burger',
        'description': 'Bacon Cheeseburger',
        'price': 'AED 55.9',
        'image': 'assets/images/cheese_burger.png',
        'rate': '5.0'
      },
      {
        'name': 'Coca Cola',
        'description': 'Can Coke',
        'price': 'AED 3.9',
        'image': 'assets/images/coca_cola.png',
        'rate': '5.0'
      },
      {
        'name': 'Cupcake Strawberry',
        'description': 'Brown and Pink Dessert',
        'price': 'AED 10.9',
        'image': 'assets/images/cupcake_strawberry.png',
        'rate': '5.0'
      },
    ];

    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.favorite_border,
              color: Color.fromRGBO(251, 98, 54, 1), size: 19),
          SizedBox(width: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              menuItems[index]['image']!,
              width: 84,
              height: 84,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  menuItems[index]['name']!,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Gilroy-Bold',
                    color: Color.fromRGBO(72, 70, 70, 1),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  menuItems[index]['description']!,
                  style: TextStyle(
                    color: Color.fromRGBO(72, 70, 70, 1),
                    fontSize: 13,
                    fontFamily: 'Gilroy-Bold',
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.star,
                        color: Color.fromRGBO(251, 98, 54, 1), size: 16),
                    SizedBox(width: 5),
                    Text(
                      '5.0',
                      style: TextStyle(
                        color: Color.fromRGBO(251, 98, 54, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      menuItems[index]['price']!,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromRGBO(251, 98, 54, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8), // Rounded corners
                        ),
                        minimumSize: Size(28, 22), // Size of the button
                        padding: EdgeInsets.zero, // Remove default padding
                      ),
                      onPressed: () {},
                      child: Icon(Icons.add, size: 20, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCouponBottomSheet(int tabIndex) {
    List<String> couponContent = [
      'White Rice',
      'Pizza Margherita',
      'Cheese Burger',
      'Coca Cola',
      'Cupcake Strawberry',
    ];
    return BottomSheet(
      onClosing: () {},
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(251, 98, 54, 1),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.81),
                  topRight: Radius.circular(35.81))),
          padding: EdgeInsets.all(16),
          height: 544,
          width: 349,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Coupons',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 19.94,
                ),
              ),
              Divider(),
              Text(
                couponContent[tabIndex],
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 29.91,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              ListTile(
                title: Text(
                  'ID',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400),
                ),
                subtitle: Text(
                  'C13579246810',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20.0), // Adjust the radius as needed
                  child: Image.asset(
                    'assets/images/Code.png',
                    width: 127.52,
                    height: 127.52,
                    fit: BoxFit
                        .cover, // Optional: Adjusts how the image fits in the container
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
