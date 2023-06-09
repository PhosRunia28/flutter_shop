import 'package:coba_flutter/pages/order_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../component/menu_tile.dart';
import '../models/menu.dart';
import '../models/shop.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //  select menu, go to another page
  void goToOrderPage(Menu menu) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OrderPage(
          menu: menu,
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
                "Menu Nasi Padang",
                style: TextStyle(fontSize: 23),
              ),

              const SizedBox(height: 20),

              // list of menu for sale
              Expanded(
                child: ListView.builder(
                  itemCount: value.shop.length,
                  itemBuilder: (context, index) {
                    // get individual menu from shop
                    Menu individualMenu = value.shop[index];
                    // return that menu s a nice tile
                    return MenuTile(
                      menu: individualMenu,
                      onTap: () => goToOrderPage(individualMenu),
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
