import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_model.dart';

class QuestionText extends StatelessWidget {
  const QuestionText({super.key, required this.currentQuestion});

  final QuestionsModel currentQuestion;

  @override
  Widget build(BuildContext context) {
    return Text(
      currentQuestion.questionsText,
      style: TextStyle(color: Colors.white, fontSize: 30),
    );
  }
}
