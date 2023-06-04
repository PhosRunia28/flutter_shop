import 'package:coba_flutter/component/drink_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../component/my_button.dart';
import '../models/drink.dart';
import '../models/shop.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Drink drink) {
    Provider.of<Shop>(context, listen: false).removeToCart(drink);
  }

  void payCart() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Successfully Pay Menu"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              // heading
              Text(
                "Your Cart",
                style: TextStyle(fontSize: 23),
              ),

              const SizedBox(height: 20),

              // list of cart items
              Expanded(
                child: ListView.builder(
                  itemCount: value.cart.length,
                  itemBuilder: (context, index) {
                    // get individual drink in cart
                    Drink drink = value.cart[index];
                    // return as a nice tile
                    return DrinkTile(
                        drink: drink,
                        onTap: () => removeFromCart(drink),
                        trailing: Icon(Icons.delete));
                  },
                ),
              ),

              // pay button
              MyButton(
                textButton: "Pay",
                onTap: payCart,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
