import 'package:flutter/material.dart';

class Product{
  final String image,title,description;
  final int price,size,id;
  final Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

 List<Product> products = [
   
   Product(
       id: 1,
       image: "assets/images/bag1.png",
       title: "Nice Fendi",
       price: 250,
       description: "Flashy bag",
       size: 12,
       color: Color(0xFFbd6c41)),

   Product(
       id: 2,
       image: "assets/images/bag2.png",
       title: "Beauty Fendi",
       price: 260,
       description: "Flashy bag",
       size: 12,
       color: Color(0xFFf3b8c7)),

   Product(
       id: 3,
       image: "assets/images/bag3.png",
       title: "Icy bag",
       price: 270,
       description: "Flashy bag",
       size: 13,
       color: Color(0xFF2a5d40)),

   Product(
       id: 4,
       image: "assets/images/bag4.png",
       title: "Old bag",
       price: 240,
       description: description,
       size: 13,
       color: Color(0xFFc82f34)),

   Product(
       id: 5,
       image: "assets/images/bag5.png",
       title: "Fashion bag",
       price: 240,
       description: description,
       size: 13,
       color: Color(0xFFFB7883)),

   Product(
       id: 6,
       image: "assets/images/bag6-.png",
       title: "Office bag",
       price: 340,
       description: description,
       size: 13,
       color: Color(0xFFAEAEAE)),
  
 ];

 String description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";