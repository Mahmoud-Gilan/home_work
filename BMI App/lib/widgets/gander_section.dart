import 'package:flutter/material.dart';

class GanderSection extends StatelessWidget {
  const GanderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        customGanderCard(Icons.male, 'MALE'),
        SizedBox(width: 30),
        customGanderCard(Icons.female, 'FEMALE'),
      ],
    );
  }
}

Widget customGanderCard(IconData icon, String text) {
  return Container(
    color: Color(0xFF04061e),
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xFF171730),
        borderRadius: BorderRadius.circular(12),
      ),
      width: 170,
      height: 170,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 80),
            Text(text, style: TextStyle(color: Colors.grey, fontSize: 15)),
          ],
        ),
      ),
    ),
  );
}
