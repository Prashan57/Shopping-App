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
      title: "HP",
      price: 10000,
      size: 13,
      description: dummyText,
      image: "assets/images/laptops/hp.png"),
  Product(
      id: 2,
      title: "Dell",
      price: 10000,
      size: 13,
      description: dummyText,
      image: "assets/images/laptops/dell.png"),
  Product(
      id: 3,
      title: "MSI",
      price: 10000,
      size: 13,
      description: dummyText,
      image: "assets/images/laptops/msi.png"),
  Product(
      id: 4,
      title: "Lenovo",
      price: 10000,
      size: 13,
      description: dummyText,
      image: "assets/images/laptops/lenovo.png"),
  Product(
      id: 5,
      title: "Acer",
      price: 10000,
      size: 13,
      description: dummyText,
      image: "assets/images/laptops/acer.png"),
  Product(
      id: 6,
      title: "Predator",
      price: 10000,
      size: 13,
      description: dummyText,
      image: "assets/images/laptops/predator.png"),
  Product(
      id: 7,
      title: "Laptop",
      price: 10000,
      size: 13,
      description: dummyText,
      image: "assets/images/laptops/1.png"),
  Product(
      id: 8,
      title: "Laptop",
      price: 10000,
      size: 13,
      description: dummyText,
      image: "assets/images/laptops/1.png"),
];

String dummyText =
    "If you need an inexpensive but reliable laptop, you should choose Dell. ... Dell's Alienware offers you much better gaming performance than any HP laptop. However, if you need a healthy combination of power and price, choose HP laptops. They offer you a beautiful design, excellent quality, and powerful hardware.";
