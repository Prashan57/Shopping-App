import 'package:flutter/material.dart';

class Banner {
  final String image;
  final int id;

  Banner({
    this.id,
    this.image,
  });
}

List<Banner> Banners = [
  Banner(id: 1, image: "assets/images/banners/banner.jpg"),
  Banner(id: 2, image: "assets/images/banners/banner1.png"),
  Banner(id: 3, image: "assets/images/banners/banner2.webp"),
  Banner(id: 4, image: "assets/images/banners/banner3.jpg"),
];
