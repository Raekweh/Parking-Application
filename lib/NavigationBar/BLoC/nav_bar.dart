import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ParkingApp/Map/UI/map_menu.dart';
import 'package:ParkingApp/Payment/UI/payment_menu.dart';
import 'package:ParkingApp/Settings/UI/settings_menu.dart';


class NavigationBar extends StatefulWidget {
  @override
  NavigationBarState createState() => NavigationBarState();
}

class NavigationBarState extends State<NavigationBar> {
  int currentIndex = 1;

  final screens = [
    Payment(),
    Search(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    body: screens[currentIndex],
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => setState(() => currentIndex = index),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.payment),
          label: 'Payment',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Map',
          backgroundColor: Colors.white,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
          backgroundColor: Colors.white,
        )
      ],
    ),
  );
}