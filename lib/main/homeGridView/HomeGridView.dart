import 'package:flutter/material.dart';
import 'package:shopping_app/laptop/models/AcerProduct.dart';
import 'package:shopping_app/laptop/models/AllProduct.dart';
import 'package:shopping_app/laptop/models/DellProduct.dart';
import 'package:shopping_app/laptop/models/HpProduct.dart';
import 'package:shopping_app/laptop/models/LenovoProduct.dart';
import 'package:shopping_app/laptop/models/MSIProduct.dart';
import 'package:shopping_app/laptop/models/PredatorProduct.dart';

class HomeGridView extends StatefulWidget {
  @override
  _HomeGridViewState createState() => _HomeGridViewState();
}

class _HomeGridViewState extends State<HomeGridView>
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
    tabController = TabController(length: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(
        //   "Grid View",
        //   style: TextStyle(color: Colors.black),
        // ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   color: Colors.blueGrey,
        //   onPressed: () {},
        // ),
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.shopping_cart_outlined),
        //     color: Colors.black,
        //     onPressed: () {},
        //   ),
        //   IconButton(
        //     icon: Icon(Icons.search_sharp),
        //     color: Colors.black,
        //     onPressed: () {},
        //   )
        // ],
        bottom: TabBar(
          indicatorColor: Colors.black,
          indicatorWeight: 3.0,
          controller: tabController,
          isScrollable: true,
          labelPadding: EdgeInsets.only(bottom: 5),
          tabs: [
            buildTab("Grid View"),
          ],
        ),
      ),
      body: TabBarView(controller: tabController, children: [
        AllProduct(),
      ]),
    );
  }
}
