import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "All",
      price: 10000,
      size: 13,
      description: dummyText,
      image: "assets/images/accessories/all.png"),
  Product(
      id: 2,
      title: "Monitor",
      price: 10000,
      size: 13,
      description: dummyText,
      image: "assets/images/accessories/monitor.png"),
  Product(
      id: 3,
      title: "Headphone",
      price: 10000,
      size: 13,
      description: dummyText,
      image: "assets/images/accessories/headphone.png"),
  Product(
      id: 4,
      title: "Keyboard",
      price: 10000,
      size: 13,
      description: dummyText,
      image: "assets/images/accessories/keyboard.png"),
  Product(
      id: 5,
      title: "Mouse",
      price: 10000,
      size: 13,
      description: dummyText,
      image: "assets/images/accessories/mouse.png"),
  Product(
      id: 6,
      title: "Speaker",
      price: 10000,
      size: 13,
      description: dummyText,
      image: "assets/images/accessories/speakers.png"),
  Product(
      id: 7,
      title: "Earphones",
      price: 10000,
      size: 13,
      description: dummyText,
      image: "assets/images/accessories/earphones.png"),
  Product(
      id: 8,
      title: "Cables",
      price: 10000,
      size: 13,
      description: dummyText,
      image: "assets/images/accessories/cables.png"),
];

String dummyText =
    "If you need an inexpensive but reliable laptop, you should choose Dell. ... Dell's Alienware offers you much better gaming performance than any HP laptop. However, if you need a healthy combination of power and price, choose HP laptops. They offer you a beautiful design, excellent quality, and powerful hardware.";
