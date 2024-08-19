import 'package:flutter/material.dart';
import 'package:flutter_application_1/const/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    void showCoupon() {
      showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
              color: orange,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(19)),
            ),
            height: 390,
            width: 350,
            child: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 4),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 2,
                          color: Color(0xfffd9e82),
                        ),
                      ),
                    ),
                    child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                            style: TextStyle(color: Colors.white), "Coupons")),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                        "Cheese Burger"),
                  ),
                  ListTile(
                    textColor: Colors.white,
                    title: Text("ID"),
                    subtitle: Text("C13579246810"),
                  )
                ],
              ),
            ),
          );
        },
      );
    }

    List<Widget> myTabs = [
      const SizedBox(height: 40, child: Center(child: Text("Dishes"))),
      const Text("Pizaa"),
      const Text("Burger"),
      const Text("Drinks"),
      const Text("Dessert"),
    ];
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
              style: TextStyle(fontWeight: FontWeight.bold), "Menue"),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: Colors.white,
            labelColor: Colors.white,
            indicator: BoxDecoration(
                border: Border.all(width: 100),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(1, 1),
                      color: Color.fromARGB(102, 0, 0, 0),
                      blurRadius: 1),
                ],
                color: orange,
                borderRadius: BorderRadius.circular(4)),
            indicatorColor: orange,
            tabs: myTabs,
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Flexible(
                child: TabBarView(
                  children: [
                    Dshis(),
                    Pizaa(),
                    Dshis(),
                    Dshis(),
                    Dshis(),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.6,
                child: FilledButton(
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)))),
                    elevation: WidgetStateProperty.all(5),
                    backgroundColor: WidgetStateProperty.all(orange),
                  ),
                  onPressed: showCoupon,
                  child: const Text(
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                      "Scan Coupon"),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.6,
                child: FilledButton(
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)))),
                    elevation: WidgetStateProperty.all(5),
                    backgroundColor: WidgetStateProperty.all(orange),
                  ),
                  onPressed: () {},
                  child: const Text(
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                      "Show info"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Dshis extends StatelessWidget {
  const Dshis({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          elevation: 4,
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
          child: ListTile(
            leading: const SizedBox(
              height: 100,
              width: 100,
              child: Badge(
                  alignment: Alignment.topLeft,
                  backgroundColor: Color.fromARGB(0, 244, 67, 54),
                  label: Icon(color: Colors.red, Icons.favorite_border),
                  child: Placeholder()),
            ),
            title: const Text("White Rice"),
            subtitle: Column(
              children: [
                const Text("Basmati rice with vagtibale"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(color: orange, Icons.star),
                    Text(style: TextStyle(color: orange), "4.5")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                        style: TextStyle(fontWeight: FontWeight.bold),
                        "AED 45"),
                    Container(
                        color: orange,
                        child: const Icon(color: Colors.white, Icons.add))
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Pizaa extends StatelessWidget {
  const Pizaa({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          elevation: 4,
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
          child: ListTile(
            leading: const SizedBox(
              height: 100,
              width: 100,
              child: Badge(
                  alignment: Alignment.topLeft,
                  backgroundColor: Color.fromARGB(0, 244, 67, 54),
                  label: Icon(color: Colors.red, Icons.favorite_border),
                  child: Placeholder()),
            ),
            title: const Text("Pizaa"),
            subtitle: Column(
              children: [
                const Text("Basmati rice with vagtibale"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(color: orange, Icons.star),
                    Text(style: TextStyle(color: orange), "4.5")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                        style: TextStyle(fontWeight: FontWeight.bold),
                        "AED 45"),
                    Container(
                        color: orange,
                        child: const Icon(color: Colors.white, Icons.add))
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
