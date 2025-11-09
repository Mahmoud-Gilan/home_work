import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle h1 = TextStyle(
    fontSize: 24,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    letterSpacing: 0,
    height: 1.125, // 28 / 24
  );

  static const TextStyle h2 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    letterSpacing: 0,
    height: 1.167, // 21 / 18
  );

  static const TextStyle h3 = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    letterSpacing: 0,
    height: 1.188, // 19 / 16
  );

  static const TextStyle h4 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    letterSpacing: 0,
    height: 1.167, // 14 / 12
  );
}

// Usage example (place this outside of the styles class):
// Text('Heading 1', style: AppTextStyles.h1Style),
// Text('Heading 2', style: AppTextStyles.h2Style),
// Text('Heading 3', style: AppTextStyles.h3Style),
// Text('Heading 4', style: AppTextStyles.h4Style),
