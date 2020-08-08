import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

String lorem =
    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptas at, aspernatur blanditiis veritatis nam ea corrupti architecto, ipsum dolor sunt facere quasi, laborum fugiat earum laudantium adipisci corporis esse magnam.";

class Product {
  final String title, description, price, img;
  Product({this.title, this.description, this.price, this.img});
}

List<Product> productsList = [
  Product(
    description: lorem,
    title: "Clincal Mask",
    price: "Rs.30",
    img:
      "https://www.seratechnologies.com/resources/uploads/2020/06/Surgical-Face-Mask-Type-I-II-IIR-EN14683-ATSM-F2100-19-1-714x500.png" ),
  Product(
    description: lorem,
    title: "Wildcraft mask",
    price: "Rs.120",
    img:
        "https://images-na.ssl-images-amazon.com/images/I/81KeCqfye6L._SY355_.jpg",
  ),
  Product(
    description: lorem,
    title: "N95 Mask",
    price: "Rs.80",
    img:
        "http://www.pngall.com/wp-content/uploads/5/N95-Respirator-Mask-PNG-Picture.png",
  ),
  Product(
    description: lorem,
    title: "Nike Mask",
    price: "Rs.140",
    img:
        "https://ph-live-01.slatic.net/p/795042e1a9a4881cdb360df5cf962886.jpg",
  ),

];

class Category {
  final String title;
  final IconData icon;

  Category({this.title, this.icon});
}

List<Category> cats = [
  Category(
    icon: MaterialIcons.panorama_wide_angle,
    title: "Covid-Merch",
  )
];