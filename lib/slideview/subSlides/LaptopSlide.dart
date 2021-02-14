import 'package:flutter/material.dart';
import 'package:shopping_app/laptop/models/Products.dart';
import 'package:shopping_app/laptop/screens/LaptopHomePage.dart';

class LaptopSlideView extends StatefulWidget {
  @override
  _LaptopSlideViewState createState() => _LaptopSlideViewState();
}

class _LaptopSlideViewState extends State<LaptopSlideView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Laptops",
          style: TextStyle(
              fontSize: 28, fontFamily: 'Signatra', color: Colors.black),
        ),
        actions: [
          new IconButton(
              icon: new Icon(Icons.arrow_forward),
              color: Colors.black,
              onPressed: () {
                LaptopHomePageScreen();
              }),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Container(
          //  color: Colors.green,
          height: MediaQuery.of(context).size.height / 6.3,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 9.0),
                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width / 4.5,
                      //color: Colors.green,
                      child: Image(
                        height: 80,
                        image: AssetImage('assets/images/item/add.png'),
                      ),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 130,
                      child: Padding(
                        padding: EdgeInsets.all(9.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3.7,
                          //color: Colors.green,
                          child: Image.asset(products[0].image),
                        ),
                      ),
                    ),
                  ),
                  //Text(products[0].title),
                  Card(
                    child: Container(
                      height: 130,
                      child: Padding(
                        padding: EdgeInsets.all(9.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3.7,
                          //                  color: Colors.green,
                          child: Image.asset(products[1].image),
                        ),
                      ),
                    ),
                  ),
                  // Text(products[0].title),
                  Card(
                    child: Container(
                      height: 130,
                      child: Padding(
                        padding: EdgeInsets.all(9.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3.7,
                          //                 color: Colors.green,
                          child: Image.asset(products[2].image),
                        ),
                      ),
                    ),
                  ),
                  //Text(products[0].title),
                  Card(
                    child: Container(
                      height: 130,
                      child: Padding(
                        padding: EdgeInsets.all(9.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3.7,
                          //                  color: Colors.green,
                          child: Image.asset(products[3].image),
                        ),
                      ),
                    ),
                  ),
                  //Text(products[0].title),
                  Card(
                    child: Container(
                      height: 130,
                      child: Padding(
                        padding: EdgeInsets.all(9.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3.7,
                          //                 color: Colors.green,
                          child: Image.asset(products[4].image),
                        ),
                      ),
                    ),
                  ),
                  //Text(products[0].title),
                  Card(
                    child: Container(
                      height: 130,
                      child: Padding(
                        padding: EdgeInsets.all(9.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3.7,
                          //                  color: Colors.green,
                          child: Image.asset(products[5].image),
                        ),
                      ),
                    ),
                  ),
                  //Text(products[0].title),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
