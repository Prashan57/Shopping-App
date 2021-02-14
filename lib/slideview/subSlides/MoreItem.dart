import 'package:flutter/material.dart';
import 'package:shopping_app/laptop/models/Products.dart';
import 'package:shopping_app/slideview/subSlides/AccessoriesSlide.dart';
import 'package:shopping_app/slideview/subSlides/LaptopSlide.dart';
import 'package:shopping_app/slideview/subSlides/ShopMore.dart';

class MoreItemView extends StatefulWidget {
  @override
  _MoreItemViewState createState() => _MoreItemViewState();
}

class _MoreItemViewState extends State<MoreItemView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Laptops",
            style: TextStyle(
                fontSize: 28, fontFamily: 'Signatra', color: Colors.black),
          ),
          actions: [
            Icon(
              Icons.arrow_forward,
              color: Colors.black,
            )
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 200,
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
                height: 200,
                child: ListView.builder(
                    itemExtent: MediaQuery.of(context).size.width,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                          margin: EdgeInsets.all(5.0),
                          color: Colors.orangeAccent,
                          child: AccessoriesSlideView(),
                        ),
                    itemCount: 1),
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                // childAspectRatio: 1.5,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    height: 444,
                    margin: EdgeInsets.all(5.0),
                    color: Colors.green,
                    child: ShopMoreView(),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
