import 'package:flutter/material.dart';

import '../utils/donut_tile.dart';

// ignore: must_be_immutable
class BurgerTab extends StatelessWidget {
   BurgerTab({super.key});


  List burgerForSale = [
    
    ["Big Mac", "15.8", Colors.blue, "assets/big_mac.png"],
    ["Cheese Burger", "11.9", Colors.yellow, "assets/cheeseburger.png"],
    ["Mac chicken", "7.3", Colors.red, "assets/mac_chicken.png"],
    ["ordinary", "10.5", Colors.brown, "assets/ordinary_burger.png"]
  ];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        itemCount: burgerForSale.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.3),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlaver: burgerForSale[index][0],
            donutPrice: burgerForSale[index][1],
            donutColor: burgerForSale[index][2],
            imagePath: burgerForSale[index][3],
          );
        });
  }
}