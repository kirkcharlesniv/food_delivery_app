import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

import 'home/home_screen.dart';
import 'orders/orders_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      theme: ThemeData(
        fontFamily: 'Helvetica',
        textTheme: TextTheme(
          headline: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          subhead: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.lightBlue,
              fontSize: 14.5),
          subtitle: TextStyle(
              fontWeight: FontWeight.normal, color: Colors.grey, fontSize: 12),
          display1: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 19, color: Colors.black),
          display2: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.grey[700],
              fontSize: 11),
          display3: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: NavigatingScreen(),
    );
  }
}

class NavigatingScreen extends StatefulWidget {
  @override
  _NavigatingScreenState createState() => _NavigatingScreenState();
}

class _NavigatingScreenState extends State<NavigatingScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [HomeScreen(), OrdersScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: _children[_currentIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(LineAwesomeIcons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(LineAwesomeIcons.shopping_cart),
                title: Text('Orders')),
          ]),
    );
  }
}
