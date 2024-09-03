// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LightText extends StatelessWidget {
  double size;
  final String font;
  final String text;
  final Color? color;
  TextOverflow textOverflow;
  LightText(
      {super.key,
      this.size = 20,
      this.textOverflow = TextOverflow.ellipsis,
      this.font = "font30",
      this.color = Colors.white,
      required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: textOverflow,
      text,
      style: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: size,
          color: color,
          fontFamily: font),
    );
  }
}
