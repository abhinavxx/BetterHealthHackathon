import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectBiyt/Assistant/assistant.dart';
import 'package:projectBiyt/BottomNavigation/BookingList/list.dart';
import 'package:projectBiyt/Cart/cart.dart';
import 'package:projectBiyt/HubPage/bottom_navy_Bar.dart';
import 'HubPage/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainControl(),
    );
  }
}

class MainControl extends StatefulWidget {
  @override
  _MainControlState createState() => _MainControlState();
}

class _MainControlState extends State<MainControl> {
  int currentIndex = 0;
  final tabs = [MyHomePage(), BookList(), Cart(), Assistant()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabs[currentIndex],
        bottomNavigationBar: BottomNavyBar(
            selectedIndex: currentIndex,
            showElevation: false,
            itemCornerRadius: 4,
            onItemSelected: (index) => setState(() {
                  currentIndex = index;
                }),
            items: [
              BottomNavyBarItem(
                icon: Icon(Icons.apps),
                title: Text('Hub'),
                activeColor: Colors.black,
              ),
              BottomNavyBarItem(
                icon: Icon(FontAwesomeIcons.bookReader),
                title: Text('Ticket'),
                activeColor: Colors.black,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.add_shopping_cart_outlined),
                title: Text('Cart'),
                activeColor: Colors.black,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.radio),
                title: Text('Assistant'),
                activeColor: Colors.black,
              )
            ]));
  }
}
