import 'package:flutter/material.dart';

Widget buildQuickStateItem(
  String label1,
  String label2,
  IconData icon,
  Color colorIcon,
) {
  return Column(
    children: [
      Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Icon(icon, size: 30, color: colorIcon)),
            SizedBox(height: 4),
            Text(
              label1,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2),
            Text(label2, style: TextStyle(fontSize: 10, color: Colors.grey)),
          ],
        ),
      ),
    ],
  );
}
