import 'dart:ui';

import 'package:flutter/material.dart';

const kTextColor = Color(0xFF535353);
const kTextLightColor = Color(0xFFACACAC);

const kDefaultPaddin = 20.0;

const PrimColo = Color(0xFF00BCD4);
const FadePrimaColo = Color(0xFF26C6DA);
const PrimTxt = 'Cairo';

Drawer sideNav() {
  return Drawer(
      child: Stack(children: <Widget>[
    //first child be the blur background
    // BackdropFilter(
    //     filter: ImageFilter.blur(
    //         sigmaX: 5.0,
    //         sigmaY: 5.0), //this is dependent on the import statment above
    //     child:
    // Container(decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5))),
    ListView(padding: EdgeInsets.zero, children: <Widget>[
      Container(
        height: 200,
        child: DrawerHeader(
          margin: EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/avatar/3.jpg'),
          ),
        ),
      ),
      Center(
        child: Text('John Smith', style: TextStyle(color: Colors.white)),
      ),
      Divider(
        height: 20,
        color: Colors.black12,
      ),
      ListTile(
          // contentPadding: EdgeInsets.only(left: 19.0, top: 15.0),
          // contentPadding: EdgeInsets.fromLTRB(10.0, 0.0, 250.0, 0.0),
          leading: Icon(Icons.dashboard, color: Colors.white),
          title: Align(
            child: Text(
              "Dashboard",
              style: TextStyle(color: Colors.white),
            ),
            alignment: Alignment(-1.2, 0),
          ),
          onTap: () {}),
      Divider(
        height: 10,
        color: Colors.white12,
      ),
      ListTile(
          // contentPadding: EdgeInsets.fromLTRB(10.0, 0.0, 250.0, 0.0),
          leading: Icon(Icons.account_circle, color: Colors.white),
          title: Align(
            child: Text(
              "Profiile",
              style: TextStyle(color: Colors.white),
            ),
            alignment: Alignment(-1.2, 0),
          ),
          onTap: () {}),
      Divider(
        height: 10,
        color: Colors.white12,
      ),
      ListTile(
          // contentPadding: EdgeInsets.fromLTRB(10.0, 0.0, 250.0, 0.0),
          leading: Icon(Icons.phone, color: Colors.white),
          title: Align(
            child: Text(
              "+977 98XXXXXXXX",
              style: TextStyle(color: Colors.white),
            ),
            alignment: Alignment(-1.3, 0),
          ),
          onTap: () {}),
      ListTile(
          // contentPadding: EdgeInsets.fromLTRB(10.0, 0.0, 250.0, 0.0),
          leading: Icon(Icons.email_rounded, color: Colors.white),
          title: Align(
            child: Text(
              "user_12@gmail.com",
              style: TextStyle(color: Colors.white),
            ),
            alignment: Alignment(-1.3, 0),
          ),
          onTap: () {}),
      ListTile(
          // contentPadding: EdgeInsets.fromLTRB(10.0, 0.0, 250.0, 0.0),
          leading: Icon(Icons.location_on, color: Colors.white),
          title: Align(
            child: Text(
              "Nepal",
              style: TextStyle(color: Colors.white),
            ),
            alignment: Alignment(-1.15, 0),
          ),
          onTap: () {}),
      ListTile(
          // contentPadding: EdgeInsets.fromLTRB(10.0, 0.0, 250.0, 0.0),
          leading: Icon(Icons.message_rounded, color: Colors.white),
          title: Align(
            child: Text(
              "Facebook_user@yahoo.com",
              style: TextStyle(color: Colors.white),
            ),
            alignment: Alignment(-1.7, 0),
          ),
          onTap: () {}),
      Divider(
        height: 10,
        color: Colors.white12,
      ),
      ListTile(
          // contentPadding: EdgeInsets.fromLTRB(10.0, 0.0, 250.0, 0.0),
          leading: Icon(Icons.logout, color: Colors.white),
          title: Align(
            child: Text(
              "Log Out",
              style: TextStyle(color: Colors.white),
            ),
            alignment: Alignment(-1.2, 0),
          ),
          onTap: () {}),
    ])
  ]));
}
