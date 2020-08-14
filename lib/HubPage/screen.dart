import 'package:flutter/material.dart';
import 'package:projectBiyt/BottomNavigation/BookingList/list.dart';
import 'package:projectBiyt/HubPage/BuyingPage/categories.dart';
import 'package:projectBiyt/HubPage/bottom_navy_Bar.dart';
import 'package:projectBiyt/HubPage/BookingPage/categories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 2,
      child: new Scaffold(
        appBar: new AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            )
          ],
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.menu_book_outlined,
            color: Colors.black,
          ),
          title: new Text(
            'BiYT',
            style: TextStyle(color: Colors.black),
          ),
          bottom: new PreferredSize(
            preferredSize: new Size(80.0, 80.0),
            child: new Container(
              child: new TabBar(
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black,
                labelStyle: TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                tabs: [
                  new Container(
                    child: new Tab(
                      text: 'BOOKING',
                    ),
                  ),
                  new Container(
                    child: new Tab(text: 'BUYING'),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [Booking(), Buying()],
        ),
      ),
    );
  }
}
