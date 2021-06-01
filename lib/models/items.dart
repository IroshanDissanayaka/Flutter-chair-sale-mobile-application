import 'package:flutter/material.dart';

class Item {
  final String image, title, title2, description;
  final int size, id;
  final double price;
  final Color color;
  Item({
    this.id,
    this.image,
    this.title,
    this.title2,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Item> items = [
  Item(
      id: 1,
      title: "Chire 01",
      title2: item2Description,
      price: 234.00,
      size: 12,
      description: dummyText,
      image: "assets/images/01.png",
      // color: Color(0xFF3D82AE)),
      color: Colors.grey[350]),
  Item(
      id: 2,
      title: "Chire 02",
      title2: item2Description,
      price: 234.00,
      size: 8,
      description: dummyText,
      image: "assets/images/02.png",
      color: Colors.grey[350]),
  Item(
      id: 3,
      title: "Chire 03",
      title2: item2Description,
      price: 234.00,
      size: 10,
      description: dummyText,
      image: "assets/images/03.png",
      color: Colors.grey[350]),
  Item(
      id: 4,
      title: "Chire 04",
      title2: item2Description,
      price: 234.00,
      size: 11,
      description: dummyText,
      image: "assets/images/04.png",
      color: Colors.grey[350]),
  Item(
      id: 5,
      title: "Chire 05",
      title2: item2Description,
      price: 234.00,
      size: 12,
      description: dummyText,
      image: "assets/images/05.png",
      color: Colors.grey[350]),
  Item(
      id: 6,
      title: "Chire 06",
      title2: item2Description,
      price: 234.00,
      size: 12,
      description: dummyText,
      image: "assets/images/06.png",
      color: Colors.grey[350]),
];

String item2Description = "Sort description.";
String dummyText =
    "A chair is a piece of furniture. It is used for sitting on and it can also be used for standing on, if you can't reach something. They usually have four legs to support the weight. Some types of chairs, such as the bar-stool, have only one leg in the center. Those chairs are usually able to spin.";
