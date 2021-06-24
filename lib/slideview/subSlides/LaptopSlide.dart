import 'package:flutter/material.dart';
import 'package:shopping_app/laptop/models/Products.dart';
import 'package:shopping_app/laptop/screens/LaptopHomePage.dart';
import 'package:shopping_app/variables.dart';

class LaptopSlideView extends StatefulWidget {
  @override
  _LaptopSlideViewState createState() => _LaptopSlideViewState();
}

class _LaptopSlideViewState extends State<LaptopSlideView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //  color: Colors.green,
      height: MediaQuery.of(context).size.height / 3.7,
      // height: 170,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              //padding: EdgeInsets.only(top: 5),
              child: Container(
                //height: 170,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 9),
                      child: Card(
                        elevation: 4.0,
                        child: Expanded(
                            child: Column(
                          children: [
                            Container(
                              // decoration: BoxDecoration(
                              //     // borderRadius: BorderRadius.circular(8),
                              //     // border: Border.all(color: Colors.blueAccent),
                              //     border: Border(
                              //   bottom:
                              //       BorderSide(width: 1.0, color: Colors.grey),
                              // )),
                              height: MediaQuery.of(context).size.height / 6.7,
                              width: MediaQuery.of(context).size.width / 3.3,
                              padding: EdgeInsets.all(5.0),
                              //color: Colors.green,
                              child: Image.asset(
                                products[0].image,
                                // width: 56,
                                // height: 56,
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 3.28,
                              height: MediaQuery.of(context).size.height / 19.5,
                              color: Colors.white70,
                              child: Column(
                                children: [
                                  Text(
                                    products[0].title,
                                    style: TextStyle(
                                        fontFamily: PrimTxt,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    '\$9999',
                                    style: TextStyle(
                                        fontFamily: PrimTxt,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11),
                                  ),
                                  SizedBox(
                                    height: 0,
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 9),
                      child: Card(
                        elevation: 4.0,
                        child: Expanded(
                            child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5.0),
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.width / 3.5,
                              //color: Colors.green,
                              child: Image.asset(
                                products[1].image,
                                // width: 56,
                                // height: 56,
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 3.28,
                              height: MediaQuery.of(context).size.height / 19.5,
                              //  color: Colors.grey[200],
                              child: Column(
                                children: [
                                  Text(
                                    products[1].title,
                                    style: TextStyle(
                                        fontFamily: PrimTxt,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    '\$9999',
                                    style: TextStyle(
                                        fontFamily: PrimTxt,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11),
                                  ),
                                  SizedBox(
                                    height: 0,
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 9),
                      child: Card(
                        elevation: 4.0,
                        child: Expanded(
                            child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.width / 3.5,
                              //color: Colors.green,
                              child: Image.asset(
                                products[5].image,
                                // width: 56,
                                // height: 56,
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 3.28,
                              height: MediaQuery.of(context).size.height / 19.5,
                              //  color: Colors.grey[200],
                              child: Column(
                                children: [
                                  Text(
                                    products[2].title,
                                    style: TextStyle(
                                        fontFamily: PrimTxt,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    '\$9999',
                                    style: TextStyle(
                                        fontFamily: PrimTxt,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11),
                                  ),
                                  SizedBox(
                                    height: 0,
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 9),
                      child: Card(
                        elevation: 4.0,
                        child: Expanded(
                            child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.width / 3.5,
                              //color: Colors.green,
                              child: Image.asset(
                                products[2].image,
                                // width: 56,
                                // height: 56,
                              ),
                            ),
                            Text(
                              products[2].title,
                              style: TextStyle(
                                  fontFamily: PrimTxt,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              '\$9999',
                              style: TextStyle(
                                  fontFamily: PrimTxt,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 9),
                      child: Card(
                        elevation: 4.0,
                        child: Expanded(
                            child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.width / 3.5,
                              //color: Colors.green,
                              child: Image.asset(
                                products[3].image,
                                // width: 56,
                                // height: 56,
                              ),
                            ),
                            Text(
                              products[3].title,
                              style: TextStyle(
                                  fontFamily: PrimTxt,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              '\$9999',
                              style: TextStyle(
                                  fontFamily: PrimTxt,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11),
                            ),
                            // SizedBox(
                            //   height: 5,
                            // ),
                          ],
                        )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 9),
                      child: Card(
                        elevation: 4.0,
                        child: Expanded(
                            child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.width / 3.5,
                              //color: Colors.green,
                              child: Image.asset(
                                products[4].image,
                                // width: 56,
                                // height: 56,
                              ),
                            ),
                            Text(
                              products[4].title,
                              style: TextStyle(
                                  fontFamily: PrimTxt,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              '\$9999',
                              style: TextStyle(
                                  fontFamily: PrimTxt,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11),
                            ),
                          ],
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
