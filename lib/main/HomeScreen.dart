import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shopping_app/main/AppBody.dart';
import 'package:shopping_app/variables.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Theme(
          data: Theme.of(context).copyWith(
              // Set the transparency here
              canvasColor: PrimColo.withOpacity(0.9)
              // Colors
              //  .transparent, //or any other color you want. e.g Colors.blue.withOpacity(0.5)
              ),
          child: sideNav()),
      //  body: Text('Hello Body'),
      appBar: AppBar(
        toolbarHeight: 75.0,
        title: Text(
          "Trending",
          style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
        backgroundColor: PrimColo,
        actions: [
          Icon(Icons.shopping_cart_outlined),
          Padding(padding: EdgeInsets.only(right: 25)),
          Icon(Icons.search_sharp),
          Padding(padding: EdgeInsets.only(right: 20)),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(right: 8.0, left: 8.0),
        child: AppBody(),
      ),
    );
  }
}
