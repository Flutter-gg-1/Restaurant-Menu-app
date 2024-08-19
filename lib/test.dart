import 'package:flutter/material.dart';

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Menu'),
          centerTitle: false,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TabBar(
                indicatorColor: const Color(0xffFB6236),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: const Color(0xffFB6236),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                dividerColor: Colors.transparent,
                // TO hide the default divider
                indicatorSize: TabBarIndicatorSize.tab,

                tabs: [
                  Container(child: const Tab(text: 'Dishes')),
                  const SizedBox(width: 50, child: Tab(text: 'Pizza')),
                  const SizedBox(width: 50, child: Tab(text: 'Burger')),
                  const SizedBox(width: 50, child: Tab(text: 'Drinks')),
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: TabBarView(
                  children: [
                    /*
                    *
                    * Tab bar view 1
                    *
                    * */
                    ListView(
                      padding: const EdgeInsets.all(5),
                      children: [
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            title: const Text(
                              'White Rice',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Column(
                              children: [
                                const Row(
                                  children: [
                                    Text('Basmati rice with Vegetable'),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Color(0xffFB6236), size: 16),
                                    Text('4.5',
                                        style: TextStyle(
                                            color: Color(0xffFB6236))),
                                  ],
                                ),

                                /*
                                *
                                * Price and add icon
                                *
                                * */
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('AED 45',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                    IconButton(
                                      icon: const Icon(Icons.add_box_rounded,
                                          color: Color(0xffFB6236)),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            'assets/vector.png',
                            // fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),

                    /*
                    *
                    * Tab bar view 2
                    *
                    * */
                    const Center(child: Text('Pizza')),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffFB6236),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Scan Coupon',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffFB6236),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Show info',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
