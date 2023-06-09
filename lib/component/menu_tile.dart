// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../models/menu.dart';

class MenuTile extends StatelessWidget {
  final Menu menu;
  void Function()? onTap;
  final Widget trailing;
  MenuTile({
    super.key,
    required this.menu,
    required this.onTap,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: Colors.brown[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          title: Text(menu.name),
          subtitle: Text(menu.price),
          leading: Image.asset(menu.imagePath),
          trailing: trailing,
        ),
      ),
    );
  }
}
