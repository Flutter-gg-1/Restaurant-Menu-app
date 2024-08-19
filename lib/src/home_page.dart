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
    List<Widget> myTabs = [
      const Text("Dishis"),
      const Text("Pizaa"),
      const Text("Dishis"),
      const Text("Dishis"),
      const Text("Dishis"),
    ];
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
              style: TextStyle(fontWeight: FontWeight.bold), "Menue"),
          bottom: TabBar(
            dividerColor: Colors.white,
            labelColor: Colors.white,
            indicator: BoxDecoration(
                color: orange, borderRadius: BorderRadius.circular(5)),
            indicatorColor: orange,
            tabs: myTabs,
          ),
        ),
        body: const SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
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
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color:
                    const Color.fromARGB(255, 233, 231, 231).withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(4, 5), // changes position of shadow
              ),
            ],
          ),
          child: ListTile(
            leading: const SizedBox(
              height: 100,
              width: 100,
              child: Badge(
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
          child: ListTile(
            leading: const SizedBox(
              height: 100,
              width: 100,
              child: Badge(
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
