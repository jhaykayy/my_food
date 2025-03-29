import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_food/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza = false, salad = false, burger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40, left: 20, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hello, Josh", style: AppWidget.boldTextFieldStyle()),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(Icons.shopping_cart, color: Colors.white),
                ),
              ],
            ),

            SizedBox(height: 20),

            Text("Delicious Food", style: AppWidget.headlineTextFieldStyle()),

            Text("Discover and get", style: AppWidget.lightTextFieldStyle()),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    icecream = true;
                    pizza = false;
                    salad = false;
                    burger = false;

                    setState(() {});
                  },
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(19),
                    child: Container(
                      decoration: BoxDecoration(
                        color: icecream ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        "images/ice-cream.png",
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                        color: icecream ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    icecream = false;
                    pizza = true;
                    salad = false;
                    burger = false;

                    setState(() {});
                  },
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(19),
                    child: Container(
                      decoration: BoxDecoration(
                        color: pizza ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        "images/pizza.png",
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                        color: pizza ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    icecream = false;
                    pizza = false;
                    salad = true;
                    burger = false;

                    setState(() {});
                  },
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(19),
                    child: Container(
                      decoration: BoxDecoration(
                        color: salad ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        "images/salad.png",
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                        color: salad ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    icecream = false;
                    pizza = false;
                    salad = false;
                    burger = true;

                    setState(() {});
                  },
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(19),
                    child: Container(
                      decoration: BoxDecoration(
                        color: burger ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),

                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        "images/burger.png",
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                        color: burger ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
