import 'package:flutter/material.dart';
import 'package:shopping_app/main/flashSaleScreen/FavSeparator.dart';
import 'package:shopping_app/main/flashSaleScreen/FlashSaleBanner.dart';
import 'package:shopping_app/slideview/subSlides/ShopMoreView.dart';
import 'package:shopping_app/variables.dart';

class FlashSaleBody extends StatefulWidget {
  @override
  _FlashSaleBodyState createState() => _FlashSaleBodyState();
}

class _FlashSaleBodyState extends State<FlashSaleBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 3.5,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                itemExtent: MediaQuery.of(context).size.width,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      //  color: Colors.black,
                      //  margin: EdgeInsets.only(top: 5.0),
                      //  color: Colors.orangeAccent,
                      child: FlashSaleBannerSlide(),
                    ),
                itemCount: 1),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 11.5,
            width: MediaQuery.of(context).size.width,
            child: FavBar(),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 5.0,
              childAspectRatio: 0.7,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int i) {
                return GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: <Widget>[
                      Container(
                        //  height: 150,
                        child: Expanded(
                          child: Card(
                            elevation: 4.0,
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(7.0),
                                  //  height: 170,
                                  child: GridTile(
                                    child: Image.asset(
                                      products[i].image,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  products[i].title,
                                  style: TextStyle(
                                      fontFamily: PrimTxt,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  '$i% OFF',
                                  style: TextStyle(
                                      fontFamily: PrimTxt,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: products.length,
            ),
          ),
        ),
      ],
    ));
  }
}
