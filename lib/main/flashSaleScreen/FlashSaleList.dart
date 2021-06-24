import 'package:flutter/material.dart';
import 'package:shopping_app/slideview/subSlides/ShopMoreView.dart';

class FlashSaleList extends StatefulWidget {
  @override
  _FlashSaleListState createState() => _FlashSaleListState();
}

class _FlashSaleListState extends State<FlashSaleList> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.asset(products[index].image),
          title: Text(products[index].title),
          //  subtitle: Text(products[index].country),
          contentPadding: EdgeInsets.all(5.0),
        );
      },
    ));
  }
}
