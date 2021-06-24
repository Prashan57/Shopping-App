import 'package:flutter/material.dart';
import 'package:shopping_app/main/flashSaleScreen/FlashSaleBody.dart';
import 'package:shopping_app/variables.dart';

class FlashSaleHomeView extends StatefulWidget {
  @override
  _FlashSaleHomeViewState createState() => _FlashSaleHomeViewState();
}

class _FlashSaleHomeViewState extends State<FlashSaleHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: FadePrimaColo.withOpacity(0.9)),
          child: sideNav()),
      appBar: AppBar(
        toolbarHeight: 75.0,
        title: Text(
          "Flash Sale",
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
      body: FlashSaleBody(),
    );
  }
}
