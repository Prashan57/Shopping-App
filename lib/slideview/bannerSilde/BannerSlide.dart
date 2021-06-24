import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:shopping_app/banner/AllBanners.dart';

class BannerSlideView extends StatefulWidget {
  @override
  _BannerSlideViewState createState() => _BannerSlideViewState();
}

class _BannerSlideViewState extends State<BannerSlideView> {
  int itemCount = 0;
  List<String> _listImages = [
    "assets/images/banners/banner2.webp",
    "assets/images/banners/banner.jpg",
    "assets/images/banners/banner1.png",
    "assets/images/banners/banner3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, bottom: 8.0, left: 8.0),
      child: Container(
          decoration:
              new BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
          //height: MediaQuery.of(context).size.height / 4,
          width: MediaQuery.of(context).size.width,
          //   color: Colors.greenAccent,
          child: Card(
            // elevation: 4.0,
            child: new Swiper(
              autoplayDelay: 5000,
              autoplay: true,
              autoplayDisableOnInteraction: true,
              itemBuilder: (_, index) {
                return Image.asset(_listImages[index],
                    fit: BoxFit.fill, width: 100, height: 100);
              },
              itemCount: _listImages.length,
              viewportFraction: 1,
              // scale: 3,
            ),
          )),
    );
  }
}
