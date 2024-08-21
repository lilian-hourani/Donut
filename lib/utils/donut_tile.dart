// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class DonutTile extends StatefulWidget {
  final String? donutFlaver;
  final String? donutPrice;
  final donutColor;
  final String? imagePath;

  const DonutTile(
      {super.key,
      required this.donutFlaver,
      required this.donutPrice,
      required this.donutColor,
      required this.imagePath});

  @override
  State<DonutTile> createState() => _DonutTileState();
}

class _DonutTileState extends State<DonutTile> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: widget.donutColor[50],
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    color: widget.donutColor[100],
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20))),
                child: Text(
                  "\$${widget.donutPrice}",
                  style: TextStyle(
                      color: widget.donutColor[700],
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            child: Image.asset(
              widget.imagePath!,
            ),
          ),
          Text(
            widget.donutFlaver!,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(
            height: 4,
          ),
          const Text(
            "Dunkin's",
            style: TextStyle(
              color: Color(0xFF8D8D8D),
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isClicked = !isClicked;
                    });
                  },
                  child: Icon(
                      isClicked
                          ? Icons.favorite
                          : Icons.favorite_border_outlined,
                      size: 22,
                      color: isClicked ? Colors.pink : Colors.black),
                ),
                const Text("Add",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      decoration: TextDecoration.underline,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
