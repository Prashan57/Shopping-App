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
      title: "Earphones",
      price: 10000,
      size: 13,
      image: "assets/images/accessories/earphones.png"),
  Product(
      id: 2,
      title: "Cables",
      price: 10000,
      size: 13,
      image: "assets/images/accessories/cables.png"),
  Product(
      id: 3,
      title: "Monitor",
      price: 10000,
      size: 13,
      image: "assets/images/accessories/monitor.png"),
  Product(
      id: 4,
      title: "Apple Monitor",
      price: 10000,
      size: 13,
      image: "assets/images/accessories/AMonitor.jpg"),
  Product(
      id: 5,
      title: "Apple",
      price: 10000,
      size: 13,
      image: "assets/images/accessories/AMonitor2.png"),
  Product(
      id: 6,
      title: "Mac",
      price: 10000,
      size: 13,
      image: "assets/images/accessories/apple3.png"),
  Product(
      id: 7,
      title: "Airpods",
      price: 10000,
      size: 13,
      image: "assets/images/accessories/airpod.png"),
  Product(
      id: 8,
      title: "Earphones",
      price: 10000,
      size: 13,
      image: "assets/images/accessories/earphones.png"),
  Product(
      id: 9,
      title: "Cables",
      price: 10000,
      size: 13,
      image: "assets/images/accessories/cables.png"),
  Product(
      id: 10,
      title: "Monitor",
      price: 10000,
      size: 13,
      image: "assets/images/accessories/monitor.png"),
  Product(
      id: 11,
      title: "Skins",
      price: 10000,
      size: 13,
      image: "assets/images/accessories/air2.png"),
  Product(
      id: 12,
      title: "Mac",
      price: 10000,
      size: 13,
      image: "assets/images/accessories/apple3.png"),
];
