import 'package:flutter/cupertino.dart';
import 'menu.dart';

class Shop extends ChangeNotifier {
  // list of menu for sale
  final List<Menu> _shop = [
    Menu(
      name: "Nasi Ayam",
      price: "15.000",
      imagePath: "images/icon-food.png",
      imageOrder: "images/nasi-ayam.png",
    ),
    Menu(
      name: "Nasi Ikan",
      price: "15.000",
      imagePath: "images/icon-food.png",
      imageOrder: "images/nasi-ikan.png",
    ),
    Menu(
      name: "Nasi Telur Bulat",
      price: "10.000",
      imagePath: "images/icon-food.png",
      imageOrder: "images/nasi-telurbulat.jpg",
    ),
    Menu(
      name: "Nasi Telur Dadar",
      price: "11.000",
      imagePath: "images/icon-food.png",
      imageOrder: "images/nasi-telurdadar.jpg",
    ),
    Menu(
      name: "Nasi Putih",
      price: "5.000",
      imagePath: "images/icon-food.png",
      imageOrder: "images/nasi-putih.jpg",
    ),
    Menu(
      name: "Es teh",
      price: "3.000",
      imagePath: "images/icon-drink.png",
      imageOrder: "images/Es-teh.jpg",
    ),
    Menu(
      name: "Air Putih",
      price: "2.000",
      imagePath: "images/icon-drink.png",
      imageOrder: "images/air-putih.png",
    ),
  ];
  // list of menu in user cart
  final List<Menu> _userCart = [];

  // get menu for sale
  List<Menu> get shop => _shop;
  // get user cart
  List<Menu> get cart => _userCart;

  // add menu to cart
  void addToCart(Menu menu) {
    _userCart.add(menu);
    notifyListeners();
  }

  // remove menu from cart
  void removeToCart(Menu menu) {
    _userCart.remove(menu);
    notifyListeners();
  }
}
