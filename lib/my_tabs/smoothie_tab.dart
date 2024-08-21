import 'package:flutter/material.dart';

import '../utils/donut_tile.dart';

// ignore: must_be_immutable
class SmoothieTab extends StatelessWidget {
  SmoothieTab({super.key});

  List smoothieForSale = [
    
    ["Banana", "3.8", Colors.yellow, "assets/banana.png"],
    ["Berries", "4.9", Colors.purple, "assets/berries.png"],
    ["Avocado", "7.3", Colors.green, "assets/avocado.png"],
    ["Orange", "10.5", Colors.orange, "assets/orange.png"]
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        itemCount: smoothieForSale.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.3),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlaver: smoothieForSale[index][0],
            donutPrice: smoothieForSale[index][1],
            donutColor: smoothieForSale[index][2],
            imagePath: smoothieForSale[index][3],
          );
        });
  }
}
