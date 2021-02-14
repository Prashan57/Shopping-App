import 'package:flutter/material.dart';
import 'package:shopping_app/accessories/screens/AccessoriesHomePage.dart';
import 'package:shopping_app/auth/AuthHome.dart';
import 'package:shopping_app/laptop/screens/LaptopHomePage.dart';
import 'package:shopping_app/main/HomeScreen.dart';

class AppHomePageScreen extends StatefulWidget {
  @override
  _AppHomePageScreenState createState() => _AppHomePageScreenState();
}

class _AppHomePageScreenState extends State<AppHomePageScreen> {
  int page = 0;
  List pageOptions = [
    HomeScreen(),
    LaptopHomePageScreen(),
    AccessoriesHomePage(),
    AuthPageScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[250],
      //bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        currentIndex: page,
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.home_outlined, size: 32),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.laptop_chromebook, size: 32),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.shopping_bag_outlined, size: 32),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.person_outline_outlined, size: 32),
          ),
        ],
      ),
      body: pageOptions[page],
    );
  }
}
