import 'package:flutter/material.dart';

class ShopMoreView extends StatefulWidget {
  @override
  _ShopMoreViewState createState() => _ShopMoreViewState();
}

class _ShopMoreViewState extends State<ShopMoreView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.green,
      height: MediaQuery.of(context).size.height / 2,
      child: Image(
        image: new AssetImage('assets/images/item/bg.png'),
      ),
    );
  }
}
