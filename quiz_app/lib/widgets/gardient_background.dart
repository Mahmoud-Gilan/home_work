import 'package:flutter/material.dart';

class GardientBackground extends StatelessWidget {
  const GardientBackground({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF060B26), Color(0xFF1A1F37)],
              stops: [0.0, 1.0],
            ),
          ),
        ),
        Center(
          child: Container(
            width: 152.66,
            height: 152.66,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.2),
                  blurRadius: 100,
                  spreadRadius: 190,
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            width: 176,
            height: 176,
            decoration: BoxDecoration(
              color: Color(0xFFA838FF).withOpacity(0.0),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFA838FF).withOpacity(.30),
                  blurRadius: 200,
                  spreadRadius: 40,
                ),
              ],
            ),
          ),
        ),
        child,
      ],
    );
  }
}
