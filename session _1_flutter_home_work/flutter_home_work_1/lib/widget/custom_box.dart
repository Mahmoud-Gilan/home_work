import 'package:flutter/material.dart';

Widget customBox(double width, double height, Color color) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [Container(width: width, height: height, color: color)],
  );
}
