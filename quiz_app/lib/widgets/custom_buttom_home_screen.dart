import 'package:flutter/material.dart';
import 'package:quiz_app/screens/questions_screen.dart';

class CustomButtomHomeScreen extends StatelessWidget {
  const CustomButtomHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const QuestionsScreen()),
          );
        },
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
          ),
          child: const Text(
            'Start Quiz',
            style: TextStyle(
              color: Color(0xFF2B0063),
              fontWeight: FontWeight.w500,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
