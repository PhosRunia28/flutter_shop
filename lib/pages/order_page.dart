import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../component/my_button.dart';
import '../models/drink.dart';
import '../models/shop.dart';

class OrderPage extends StatefulWidget {
  final Drink drink;
  const OrderPage({
    super.key,
    required this.drink,
  });

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  // add to cart
  void addToCart() {
    // add to cart
    Provider.of<Shop>(
      context,
      listen: false,
    ).addToCart(widget.drink);

    // direct user back to shop page
    Navigator.pop(context);

    // message succefully added
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Successfully added to cart"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.drink.name)),
      backgroundColor: Colors.brown[300],
      body: Column(
        children: [
          const SizedBox(height: 120),
          Image.asset(widget.drink.imagePath),
          const SizedBox(height: 25),
          Center(
            child: Text(
              "${widget.drink.price}",
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 50),
          MyButton(
            onTap: addToCart,
            textButton: "Add To Cart",
          )
        ],
      ),
    );
  }
}
