import 'package:flutter/material.dart';
import 'package:shopping_app/main/AppBody.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75.0,
        title: Center(
          child: Text(
            "Shop",
            style: TextStyle(
                fontFamily: 'Signatra',
                fontSize: 45,
                color: Colors.black,
                fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: AppBody(),
    );
  }
}
