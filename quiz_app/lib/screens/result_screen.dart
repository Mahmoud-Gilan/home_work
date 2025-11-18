import 'package:flutter/material.dart';
import 'package:quiz_app/screens/home_screen.dart';
import 'package:quiz_app/models/questions_model.dart';

class ResultScreen extends StatelessWidget {
  final List<int?> selectedOptions;
  const ResultScreen({super.key, required this.selectedOptions});

  int calculateScore() {
    int score = 0;
    for (int i = 0; i < questionsList.length; i++) {
      if (selectedOptions[i] == questionsList[i].correctAnswerIndex) {
        score++;
      }
    }
    return score;
  }

  @override
  Widget build(BuildContext context) {
    final int score = calculateScore();
    final int totalQuestions = questionsList.length;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF060B26), Color(0xFF1A1F37)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your Result',
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              'score: $score / $totalQuestions',
              style: TextStyle(fontSize: 28, color: Colors.white70),
            ),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 28, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Return to Home',
                style: TextStyle(fontSize: 16, color: Color(0xFF2B0063)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
