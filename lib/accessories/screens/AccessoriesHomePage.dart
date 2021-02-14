import 'package:flutter/material.dart';
import 'package:shopping_app/accessories/models/AllProduct.dart';
import 'package:shopping_app/accessories/models/Cables.dart';
import 'package:shopping_app/accessories/models/Earphones.dart';
import 'package:shopping_app/accessories/models/Headphones.dart';
import 'package:shopping_app/accessories/models/Keyboard.dart';
import 'package:shopping_app/accessories/models/Monitors.dart';
import 'package:shopping_app/accessories/models/Mouse.dart';
import 'package:shopping_app/accessories/models/Products.dart';
import 'package:shopping_app/accessories/models/Speakers.dart';

class AccessoriesHomePage extends StatefulWidget {
  @override
  _AccessoriesHomePageState createState() => _AccessoriesHomePageState();
}

class _AccessoriesHomePageState extends State<AccessoriesHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  buildTab(String name) {
    return Container(
      width: 150,
      height: 50,
      child: Card(
        child: Center(
          child: Text(
            name,
            style: TextStyle(fontFamily: 'Nunito'),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: products.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Accessories",
          style: TextStyle(color: Colors.black),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.blueGrey,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            color: Colors.black,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search_sharp),
            color: Colors.black,
            onPressed: () {},
          )
        ],
        bottom: TabBar(
          indicatorColor: Colors.black,
          indicatorWeight: 3.0,
          controller: tabController,
          isScrollable: true,
          labelPadding: EdgeInsets.symmetric(horizontal: 5),
          tabs: [
            buildTab("All"),
            buildTab("Monitors"),
            buildTab("Headphones"),
            buildTab("Keyboard"),
            buildTab("Mouse"),
            buildTab("Speakers"),
            buildTab("Earphones"),
            buildTab("Cables")
          ],
        ),
      ),
      body: TabBarView(controller: tabController, children: [
        AllProduct(),
        Monitors(),
        Headphones(),
        Keyboard(),
        Mouse(),
        Speakers(),
        Earphones(),
        Cables()
      ]),
    );
  }
}
