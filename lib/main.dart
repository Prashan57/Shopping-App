import 'package:flutter/material.dart';
import 'package:shopping_app/laptop/models/AcerProduct.dart';
import 'package:shopping_app/main/AppBody.dart';
import 'package:shopping_app/main/AppHomePage.dart';
import 'package:shopping_app/main/homeGridView/HomeContentScreen.dart';
import 'package:shopping_app/main/homeGridView/HomeGridView.dart';
import 'package:shopping_app/slideview/subSlides/MoreItem.dart';
import 'package:shopping_app/variables.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shopping App",
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: AppHomePageScreen(),
    );
  }
}
