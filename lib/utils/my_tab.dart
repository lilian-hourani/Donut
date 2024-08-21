// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class MyTab extends StatefulWidget {
  final String IconPath;
  const MyTab({super.key, required this.IconPath});

  @override
  State<MyTab> createState() => _MyTabState();
}

class _MyTabState extends State<MyTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
          color: const Color(0xFFE7E7E7),
          borderRadius: BorderRadius.circular(12)),
      child: Image.asset(
        widget.IconPath,
      ),
    );
  }
}
