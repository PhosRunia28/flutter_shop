import 'package:coba_flutter/pages/order_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../component/drink_tile.dart';
import '../models/drink.dart';
import '../models/shop.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //  select drink, go to another page
  void goToOrderPage(Drink drink) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OrderPage(
          drink: drink,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              // heading
              Text(
                "Bubble Tea Shop",
                style: TextStyle(fontSize: 23),
              ),

              const SizedBox(height: 20),

              // list of drink for sale
              Expanded(
                child: ListView.builder(
                  itemCount: value.shop.length,
                  itemBuilder: (context, index) {
                    // get individual drink from shop
                    Drink individualDrink = value.shop[index];
                    // return that drink s a nice tile
                    return DrinkTile(
                      drink: individualDrink,
                      onTap: () => goToOrderPage(individualDrink),
                      trailing: Icon(Icons.arrow_forward),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
