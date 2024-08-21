// ignore_for_file: must_be_immutable

import 'package:donut/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  DonutTab({super.key});

  List donutForSale = [
    // [donutFlaver, donutPrice, donutColor, imagePath]
    ["Ice Cream", "3.8", Colors.blue, "assets/icecream_donut.png"],
    ["Strawberry", "4.9", Colors.pink, "assets/strawberry_donut.png"],
    ["Grape Ape", "7.3", Colors.green, "assets/grape_donut.png"],
    ["Choco", "10.5", Colors.brown, "assets/chocolate_donut.png"]
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        itemCount: donutForSale.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.3),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlaver: donutForSale[index][0],
            donutPrice: donutForSale[index][1],
            donutColor: donutForSale[index][2],
            imagePath: donutForSale[index][3],
          );
        });
  }
}
