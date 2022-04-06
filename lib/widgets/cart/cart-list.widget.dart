import 'package:flutter/material.dart';

import 'cart-item.widget.dart';

class CartList extends StatelessWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CartItem(),
        CartItem(),
        CartItem(),
        CartItem(),
      ],
    );
  }
}
