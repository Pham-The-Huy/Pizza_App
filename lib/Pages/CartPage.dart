import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/AppBarWidget.dart';
import '../Widgets/CartBottomNavBar.dart';
import '../Widgets/DrawerWidget.dart';

class CartPage extends StatelessWidget{
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarWidget(),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      "Order List",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 9,
                    ),
                    child: Container(
                      width: 380,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: const Offset(0,3),
                            )
                          ]
                      ),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'assets/4.png',
                              height: 80,
                              width: 150,
                            ),
                          ),
                          // ignore: sized_box_for_whitespace
                          Container(
                            width: 190,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Formaggi",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Taste Our Hot Pizza",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  "\$9",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.lightBlue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    CupertinoIcons.minus,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '2',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Icon(
                                    CupertinoIcons.minus,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 9,
                    ),
                    child: Container(
                      width: 380,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: const Offset(0,3),
                            )
                          ]
                      ),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'assets/4.png',
                              height: 80,
                              width: 150,
                            ),
                          ),
                          // ignore: sized_box_for_whitespace
                          Container(
                            width: 190,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Funghi",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Taste Our Hot Burger",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  "\$6",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.lightBlue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8,
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    CupertinoIcons.minus,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Icon(
                                    CupertinoIcons.minus,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 30,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                            ),
                          ]
                      ),
                      child: const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Items:",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "3",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                          ),

                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Sub-Total:",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "\$24",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Delivery:",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "\$2",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total:",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.lightBlue,
                                  ),
                                ),
                                Text(
                                  "\$26",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.lightBlue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      drawer: DrawerWidget(),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}