import 'package:flutter/material.dart';

class QuickStatesSection extends StatelessWidget {
  const QuickStatesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quick States',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildQuickStateItem('1,234', 'Users', Icons.group, Colors.purple),
            SizedBox(width: 20),
            buildQuickStateItem('4.8', 'Rating', Icons.star, Colors.orange),
            SizedBox(width: 20),
            buildQuickStateItem(
              '98%',
              'Success',
              Icons.trending_up,
              Colors.blue,
            ),
          ],
        ),
      ],
    );
  }
}

Widget buildQuickStateItem(
  String stateValue,
  String stateTitle,
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
              stateValue,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2),
            Text(
              stateTitle,
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
          ],
        ),
      ),
    ],
  );
}
