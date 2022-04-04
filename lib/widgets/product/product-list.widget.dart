import 'package:flutter/material.dart';
import 'package:shopping/widgets/product/product-card.widget.dart';

class ProductList extends StatelessWidget {
  final Axis scrollDirection;

  const ProductList({
    Key? key,
    required this.scrollDirection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      child: ListView(
        scrollDirection: scrollDirection,
        children: <Widget>[
          ProductCard(
            title: "Nike Dry-Fit Long Sleeve",
            brand: "Nike",
            image: "assets/product-10.png",
            price: 150,
          ),
          ProductCard(
            title: "BeoPlay Speaker",
            brand: "Bang and Olufsen",
            image: "assets/product-1.png",
            price: 755,
          ),
          ProductCard(
            title: "Leather Wristwatch",
            brand: "Tag Heuer",
            image: "assets/product-2.png",
            price: 450,
          ),
          ProductCard(
            title: "Smart Bluetooth Speaker",
            brand: "Google Inc.",
            image: "assets/product-3.png",
            price: 900,
          ),
          ProductCard(
            title: "Smart Luggage",
            brand: "Smart Inc.",
            image: "assets/product-4.png",
            price: 1000,
          ),
        ],
      ),
    );
  }
}
