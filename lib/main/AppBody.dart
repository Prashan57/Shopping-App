import 'package:flutter/material.dart';
import 'package:shopping_app/main/homeGridView/HomeGridView.dart';
import 'package:shopping_app/main/homeGridView/HomeContentScreen.dart';
import 'package:shopping_app/slideview/subSlides/AccessoriesSlide.dart';
import 'package:shopping_app/slideview/subSlides/LaptopSlide.dart';
import 'package:shopping_app/slideview/subSlides/ShopMore.dart';
import 'package:shopping_app/slideview/subSlides/ShopMoreView.dart';

class AppBody extends StatefulWidget {
  @override
  _AppBodyState createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 3.5,
            child: ListView.builder(
                itemExtent: MediaQuery.of(context).size.width,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.all(5.0),
                      //  color: Colors.orangeAccent,
                      padding: EdgeInsets.only(right: 10),
                      child: LaptopSlideView(),
                    ),
                itemCount: 1),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 3.5,
            child: ListView.builder(
                itemExtent: MediaQuery.of(context).size.width,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.all(5.0),
                      //  color: Colors.orangeAccent,
                      child: AccessoriesSlideView(),
                    ),
                itemCount: 1),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 3.5,
            child: ListView.builder(
                itemExtent: MediaQuery.of(context).size.width,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.all(5.0),
                      //  color: Colors.orangeAccent,
                      child: ShopGridViewScreen(),
                    ),
                itemCount: 1),
          ),
        ),
      ],
    ));
  }
}
