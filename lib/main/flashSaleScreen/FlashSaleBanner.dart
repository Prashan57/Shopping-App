import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:shopping_app/banner/AllBanners.dart';

class FlashSaleBannerSlide extends StatefulWidget {
  @override
  _FlashSaleBannerSlideState createState() => _FlashSaleBannerSlideState();
}

class _FlashSaleBannerSlideState extends State<FlashSaleBannerSlide> {
  int itemCount = 0;
  List<String> _listImages = [
    "assets/images/banners/bb1.jpg",
    "assets/images/banners/bb2.jpg",
    "assets/images/banners/bb3.jpeg",
    "assets/images/banners/bb4.jpg",
    "assets/images/banners/bb1.jpg",
    "assets/images/banners/bb6.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration:
              new BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
          //height: MediaQuery.of(context).size.height / 4,
          width: MediaQuery.of(context).size.width,
          //   color: Colors.greenAccent,
          child: Card(
            elevation: 4.0,
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
