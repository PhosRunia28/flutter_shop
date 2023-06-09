import 'package:coba_flutter/component/menu_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../component/my_button.dart';
import '../models/menu.dart';
import '../models/shop.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Menu menu) {
    Provider.of<Shop>(context, listen: false).removeToCart(menu);
  }

  void payCart() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Successfully Pay"),
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
                    // get individual menu in cart
                    Menu menu = value.cart[index];
                    // return as a nice tile
                    return MenuTile(
                        menu: menu,
                        onTap: () => removeFromCart(menu),
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
