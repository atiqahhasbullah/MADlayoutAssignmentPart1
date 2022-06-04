import 'package:_myhomeApp/bedroombody.dart';
import 'package:flutter/material.dart';
import 'allbody.dart';
import 'livingroombody.dart';
import 'bedroombody.dart';

// ignore: camel_case_types
class Home_Screen extends StatefulWidget {
  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

// ignore: camel_case_types
class _Home_ScreenState extends State<Home_Screen>
    with SingleTickerProviderStateMixin {
  final colorstheme = Color.fromARGB(255, 111, 228, 185);

  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 0)
      ..addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      appBar: AppBar(
        title: Text(
          "My Home",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.brown.shade50,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: false,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            child: TabBar(
                indicatorPadding: EdgeInsets.all(10),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey.shade600,
                labelStyle: TextStyle(fontSize: 15),
                labelPadding:
                    EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 10),
                controller: _tabController,
                tabs: [
                  Tab(
                    icon: Icon(Icons.apps_sharp),
                    text: "All",
                  ),
                  Tab(
                    icon: Icon(Icons.living_outlined),
                    text: "Living Room",
                  ),
                  Tab(
                    icon: Icon(Icons.airline_seat_individual_suite_outlined),
                    text: "Bedroom",
                  ),
                ]),
          ),
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              SensorScreenBody(),
              LRScreenBody(),
              BRScreenBody(),
            ]),
          )
        ],
      ),
    );
  }
}
