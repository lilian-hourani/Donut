import 'package:flutter/material.dart';

import '../utils/donut_tile.dart';

// ignore: must_be_immutable
class PancakeTab extends StatelessWidget {
   PancakeTab({super.key});


  List pancakeForSale = [
    
    ["Fruit", "3.8", Colors.purple, "assets/fruit_pancake.png"],
    ["Honey", "4.9", Colors.yellow, "assets/honey_pancake.png"],
    ["Strawberry", "7.3", Colors.pink, "assets/stroberry_pancake.png"],
    ["Choco", "10.5", Colors.brown, "assets/choco_pancake.png"]
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        itemCount: pancakeForSale.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.3),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlaver: pancakeForSale[index][0],
            donutPrice: pancakeForSale[index][1],
            donutColor: pancakeForSale[index][2],
            imagePath: pancakeForSale[index][3],
          );
        });
  }
}