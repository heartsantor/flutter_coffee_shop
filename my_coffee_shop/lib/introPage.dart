// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_coffee_shop/HomePage.dart';
import 'package:my_coffee_shop/Widgets/BoldText.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset("assets/pngegg.png"),
          ),
          SizedBox(
            height: 35,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Container(
              width: 300,
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: BoldText(
                  text: "Home Page",
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
