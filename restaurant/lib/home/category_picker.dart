import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../mock_data.dart';
import '../model/item.dart';
import 'home.dart';

class CategoryPicker extends StatelessWidget {
  CategoryPicker({super.key});

  final List<String> tabs = ['Dishes', 'Pizza', 'Burger', 'Drinks', 'Desert'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: MockData.items.length,
      child: Column(
        children: [
          TabBar(
              indicatorColor: Colors.transparent,
              dividerColor: Colors.transparent,
              labelPadding: const EdgeInsets.all(8),
              unselectedLabelColor: Colors.grey,
              labelStyle: MyTextStyle.tabStyle(),
              unselectedLabelStyle: MyTextStyle.tabStyle(color: Colors.grey),
              indicator: BoxDecoration(
                color: C.orange,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              tabs: tabs.asMap().entries.map((entry) {
                int idx = entry.key;
                String val = entry.value;
                return TabBarItemView(idx: idx, title: val);
              }).toList()),
          AspectRatio(
            aspectRatio: 1.9,
            child: TabBarView(
              children:
                  MockData.items.map((item) => ItemView(item: item)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class TabBarItemView extends StatelessWidget {
  const TabBarItemView({super.key, required this.idx, required this.title});

  final int idx;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
      child: Center(
        child: Text(title),
      ),
    );
  }
}

class ItemView extends StatelessWidget {
  const ItemView({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1.9,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Row(
                              children: [
                                Icon(
                                  CupertinoIcons.heart,
                                  color: C.orange,
                                ),
                              ],
                            ),
                            AspectRatio(aspectRatio: 2, child: item.img),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Spacer(),
                            Text(
                              item.name,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(item.description),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: C.orange,
                                ),
                                Text(
                                  '${item.rating}',
                                  style: const TextStyle(
                                    color: C.orange,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Text(
                                  'AED ${item.price}',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.add_box,
                                  size: 32,
                                  color: C.orange,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
