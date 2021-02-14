import 'package:flutter/material.dart';
import 'package:shopping_app/slideview/subSlides/ShopMore.dart';

class ShopGridViewScreen extends StatefulWidget {
  @override
  _ShopGridViewScreenState createState() => _ShopGridViewScreenState();
}

class _ShopGridViewScreenState extends State<ShopGridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Shop More ...",
          style: TextStyle(
              fontSize: 28, fontFamily: 'Signatra', color: Colors.black),
        ),
        actions: [
          Icon(
            Icons.arrow_forward,
            color: Colors.black,
          )
        ],
      ),
      body: Container(
          child: CustomScrollView(slivers: [
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            // childAspectRatio: 1.5,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) => Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                height: 444,
                margin: EdgeInsets.all(5.0),
                //  color: Colors.green,
                child: ShopMoreView(),
              ),
            ),
          ),
        )
      ])),
    );
  }
}
