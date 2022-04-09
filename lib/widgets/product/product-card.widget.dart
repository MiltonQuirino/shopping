import 'package:flutter/material.dart';

import '../../pages/product.page.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String brand;
  final double price;

  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.brand,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      width: 170,
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(
                    title: title,
                    brand: brand,
                    image: image,
                    price: price,
                  ),
                ),
              );
            },
            child: Hero(
              tag: image,
              child: Image.asset(
                image,
                width: 170,
                height: 170,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 30,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            brand,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "\$ $price",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
