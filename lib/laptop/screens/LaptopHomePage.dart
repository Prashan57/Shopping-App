import 'package:flutter/material.dart';
import 'package:shopping_app/laptop/models/AcerProduct.dart';
import 'package:shopping_app/laptop/models/AllProduct.dart';
import 'package:shopping_app/laptop/models/DellProduct.dart';
import 'package:shopping_app/laptop/models/HpProduct.dart';
import 'package:shopping_app/laptop/models/LenovoProduct.dart';
import 'package:shopping_app/laptop/models/MSIProduct.dart';
import 'package:shopping_app/laptop/models/PredatorProduct.dart';

class LaptopHomePageScreen extends StatefulWidget {
  @override
  _LaptopHomePageScreenState createState() => _LaptopHomePageScreenState();
}

class _LaptopHomePageScreenState extends State<LaptopHomePageScreen>
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
    tabController = TabController(length: 7, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Laptops",
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
            buildTab("HP"),
            buildTab("Dell"),
            buildTab("MSI"),
            buildTab("Lenovo"),
            buildTab("Acer"),
            buildTab("Predator")
          ],
        ),
      ),
      body: TabBarView(controller: tabController, children: [
        AllProduct(),
        HpProducts(),
        DellProduct(),
        MSIProduct(),
        LenovoProduct(),
        AcerProduct(),
        PredatorProduct()
      ]),
    );
  }
}
