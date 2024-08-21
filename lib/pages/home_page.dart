// ignore_for_file: must_be_immutable

import 'package:donut/utils/my_tab.dart';
import 'package:flutter/material.dart';

import '../my_tabs/burger_tab.dart';
import '../my_tabs/donut_tab.dart';
import '../my_tabs/pancake_tab.dart';
import '../my_tabs/pizza_tab.dart';
import '../my_tabs/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    const MyTab(IconPath: "assets/donut.png"),
    const MyTab(IconPath: "assets/burger.png"),
    const MyTab(IconPath: "assets/smoothie.png"),
    const MyTab(IconPath: "assets/pancakes.png"),
    const MyTab(IconPath: "assets/pizza.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              "assets/menu.png",
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset("assets/user.png"),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 15,
            ),
            RichText(
              text: const TextSpan(children: <TextSpan>[
                TextSpan(
                  text: "I want to ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.w400),
                ),
                TextSpan(
                    text: "Eat",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                        decoration: TextDecoration.underline))
              ]),
            ),
            const SizedBox(
              height: 30,
            ),
            TabBar(
              tabs: myTabs,
            ),
            Expanded(
              child: TabBarView(children: [
                DonutTab(),
                BurgerTab(),
                SmoothieTab(),
                PancakeTab(),
                PizzaTab()
              ]),
            ),
            Container(
              height: 70,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border:
                      Border.all(color: const Color(0xFFA7A7A7), width: 1.2),
                  borderRadius: BorderRadius.circular(12)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "2 Items|\$45",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        "Delivery Charges Included",
                        style: TextStyle(
                            color: Color(0xFF797878),
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      )
                    ],
                  ),
                  Text("View Cart",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        decoration: TextDecoration.underline,
                      ))
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
