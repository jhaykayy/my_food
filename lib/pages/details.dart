import 'package:flutter/material.dart';
import 'package:my_food/widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },

              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              ),
            ),
            Image.asset(
              "images/salad2.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.fill,
            ),

            SizedBox(height: 15),

            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mediterian",
                      style: AppWidget.semiBoldTextFieldStyle(),
                    ),
                    Text(
                      "Chickenpea Salad",
                      style: AppWidget.boldTextFieldStyle(),
                    ),
                  ],
                ),

                Spacer(),

                GestureDetector(
                  onTap: () {
                    if (a > 1) {
                      --a;
                    }
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 134, 104, 104),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(Icons.remove, color: Colors.white),
                  ),
                ),

                SizedBox(width: 20),

                Text(a.toString(), style: AppWidget.semiBoldTextFieldStyle()),

                SizedBox(width: 20),

                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            Text(
              " This is just a sample app This is just a sample app This is just a sample app This is just a sample app This is just a sample app This is just a sample app This is just a sample app",
              maxLines: 3,
              style: AppWidget.lightTextFieldStyle(),
            ),

            SizedBox(height: 30),

            Row(
              children: [
                Text("Delivery timme", style: AppWidget.lightTextFieldStyle()),
                SizedBox(width: 25),
                Icon(Icons.alarm, color: Colors.black),
                SizedBox(width: 5),
                Text("30 min", style: AppWidget.semiBoldTextFieldStyle()),
              ],
            ),

            Spacer(),

            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Price",
                        style: AppWidget.semiBoldTextFieldStyle(),
                      ),
                      Text("\$25", style: AppWidget.headlineTextFieldStyle()),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(color: Colors.black),
                    child: Row(
                      children: [
                        Text(
                          "Add to cart",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                          ),
                        ),

                        Container(
                          decoration: BoxDecoration(color: Colors.black45),
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
