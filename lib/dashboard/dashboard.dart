import 'package:flutter/material.dart';
import 'package:kilo_health/home/homeScreen.dart';
import 'package:kilo_health/message/messageScreen.dart';
import 'package:kilo_health/notification/notificationScreen.dart';
import 'package:kilo_health/profile/profileScreen.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    MessageScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
        currentIndex: _selectIndex,
        selectedItemColor: Colors.blueAccent.shade100,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
