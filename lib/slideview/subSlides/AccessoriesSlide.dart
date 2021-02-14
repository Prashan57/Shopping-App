import 'package:flutter/material.dart';
import 'package:shopping_app/accessories/models/Products.dart';
import 'package:shopping_app/accessories/screens/AccessoriesHomePage.dart';

class AccessoriesSlideView extends StatefulWidget {
  @override
  _AccessoriesSlideViewState createState() => _AccessoriesSlideViewState();
}

class _AccessoriesSlideViewState extends State<AccessoriesSlideView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Accessories",
          style: TextStyle(
              fontSize: 28, fontFamily: 'Signatra', color: Colors.black),
        ),
        actions: [
          new IconButton(
              icon: new Icon(Icons.arrow_forward),
              color: Colors.black,
              onPressed: () {
                AccessoriesHomePage();
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
                  Card(
                    child: Container(
                      height: 130,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3.7,
//                    color: Colors.green,
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
                        padding: EdgeInsets.all(8.0),
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
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3.7,
                          //                color: Colors.green,
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
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3.7,
                          //              color: Colors.green,
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
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3.7,
                          //            color: Colors.green,
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
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 3.7,
                          //          color: Colors.green,
                          child: Image.asset(products[5].image),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3.7,
                      //          color: Colors.green,
                      child: Image(
                        height: 45,
                        image: AssetImage('assets/images/item/add.png'),
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
