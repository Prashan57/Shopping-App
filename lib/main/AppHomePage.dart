import 'package:flutter/material.dart';
import 'package:shopping_app/laptop/screens/LaptopHomePage.dart';
import 'package:shopping_app/main/HomeScreen.dart';
import 'package:shopping_app/main/flashSaleScreen/FlashSaleHome.dart';
import 'package:shopping_app/variables.dart';

class AppHomePageScreen extends StatefulWidget {
  @override
  _AppHomePageScreenState createState() => _AppHomePageScreenState();
}

class _AppHomePageScreenState extends State<AppHomePageScreen> {
  int page = 0;
  List pageOptions = [
    HomeScreen(),
    FlashSaleHomeView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      //  backgroundColor: Colors.grey[250],
      //bottom navigation bar

      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(7.0),
          topRight: Radius.circular(7.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: PrimColo,
          selectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(color: Colors.white),
          unselectedItemColor: Colors.white30,
          unselectedLabelStyle: TextStyle(color: Colors.white30),
          currentIndex: page,
          onTap: (index) {
            setState(() {
              page = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: "",
              icon: SizedBox(
                child: Icon(
                  Icons.home,
                  size: 35,
                ),
                height: 25,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: SizedBox(
                child: Icon(Icons.local_fire_department_outlined, size: 35),
                height: 25,
              ),
            ),
          ],
        ),
      ),
      body: pageOptions[page],
    );
  }
}
