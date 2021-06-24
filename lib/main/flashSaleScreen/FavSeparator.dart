import 'package:flutter/material.dart';
import 'package:shopping_app/variables.dart';

class FavBar extends StatefulWidget {
  @override
  _FavBarState createState() => _FavBarState();
}

class _FavBarState extends State<FavBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
          //  height: MediaQuery.of(context).size.height / 15,
          width: MediaQuery.of(context).size.width,
          child: Card(
              elevation: 4.0,
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 15.0)),
                  Icon(Icons.format_align_left_rounded),
                  Padding(padding: EdgeInsets.only(right: 8.0)),
                  Icon(Icons.favorite),
                  Padding(padding: EdgeInsets.only(right: 15.0)),
                  Text(
                    "Your Favorites",
                    style: TextStyle(
                        color: kTextColor, fontFamily: PrimTxt, fontSize: 18),
                  ),
                ],
              ))),
    );
  }
}
