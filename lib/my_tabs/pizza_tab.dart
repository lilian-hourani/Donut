import 'package:flutter/material.dart';

import '../utils/donut_tile.dart';

// ignore: must_be_immutable
class PizzaTab extends StatelessWidget {
   PizzaTab({super.key});

  List pizzaForSale = [
    
    ["Cheese", "3.8", Colors.blue, "assets/pizza_cheese.png"],
    ["Mushroom", "4.9", Colors.pink, "assets/pizza_mushroom.png"],
    ["Vegan", "7.3", Colors.green, "assets/pizza_vegan.png"],
    ["Pepperoni", "10.5", Colors.brown, "assets/pizza_pepperoni.png"]
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        itemCount: pizzaForSale.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.3),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlaver: pizzaForSale[index][0],
            donutPrice: pizzaForSale[index][1],
            donutColor: pizzaForSale[index][2],
            imagePath: pizzaForSale[index][3],
          );
        });
  }
}