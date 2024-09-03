// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_coffee_shop/Widgets/BoldText.dart';
import 'package:my_coffee_shop/Widgets/LightText.dart';

class Tile extends StatelessWidget {
  const Tile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 260,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 20),
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
                      padding:
                          const EdgeInsets.only(top: 170, left: 10, right: 10),
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
            );
          }),
    );
  }
}
