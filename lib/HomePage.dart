// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_coffee_shop/Widgets/BoldText.dart';
import 'package:my_coffee_shop/Widgets/LightText.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List Name = ["Cappuccico", "Espresso", "Latte", "Flat Wallio"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.apps,
                          size: 30,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset("assets/avatar.png"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: BoldText(
                    text: "Find the best \ncoffee for you",
                    size: 35,
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        // icon
                        Icon(Icons.search),
                        SizedBox(
                          width: 10,
                        ),
                        // field
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                              hintText: "Find your coffee",
                              hintStyle: TextStyle(
                                  color: Colors.grey.withOpacity(0.7)),
                              border: InputBorder.none),
                        ))
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                // List view
                Container(
                  height: 30,
                  width: double.maxFinite,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Name.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 30,
                          width: 100,
                          child: Center(
                            child: BoldText(
                                text: Name[index],
                                size: 17,
                                color: index == 0
                                    ? Colors.orange
                                    : Colors.grey.withOpacity(0.5)),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 250,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Container(
                                height: 160,
                                width: 140,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/coffee1.jpg"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              Container(
                                width: 60,
                                height: 20,
                                margin: EdgeInsets.only(left: 80),
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 15,
                                    ),
                                    BoldText(
                                      text: "4.5",
                                      size: 14,
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 170, left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BoldText(
                              text: "Cappuccino",
                              size: 18,
                            ),
                            LightText(
                              text: "With Oat Milk",
                              size: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    BoldText(
                                      text: "\$",
                                      color: Colors.orange,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    BoldText(text: "4.20"),
                                  ],
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(Icons.add),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
