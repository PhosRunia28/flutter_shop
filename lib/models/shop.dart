import 'package:flutter/cupertino.dart';
import 'drink.dart';

class Shop extends ChangeNotifier {
  // list of drink for sale
  final List<Drink> _shop = [
    Drink(
      name: "Pearl drink",
      price: "25",
      imagePath: "images/coffee-cup.png",
    ),
    Drink(
      name: "Sweet drink",
      price: "20",
      imagePath: "images/coffee-cup.png",
    ),
  ];
  // list of drink in user cart
  final List<Drink> _userCart = [];

  // get drink for sale
  List<Drink> get shop => _shop;
  // get user cart
  List<Drink> get cart => _userCart;

  // add drink to cart
  void addToCart(Drink drink) {
    _userCart.add(drink);
    notifyListeners();
  }

  // remove drink from cart
  void removeToCart(Drink drink) {
    _userCart.remove(drink);
    notifyListeners();
  }
}
