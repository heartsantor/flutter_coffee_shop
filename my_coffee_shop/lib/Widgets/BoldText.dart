// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  double size;
  final String font;
  final String text;
  final Color? color;
  final TextAlign? align;
  TextOverflow textOverflow;
  BoldText(
      {super.key,
      this.size = 20,
      this.align,
      this.textOverflow = TextOverflow.ellipsis,
      this.font = "font30",
      this.color,
      required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: textOverflow,
      text,
      textAlign: align,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: size,
          color: color,
          fontFamily: font),
    );
  }
}
