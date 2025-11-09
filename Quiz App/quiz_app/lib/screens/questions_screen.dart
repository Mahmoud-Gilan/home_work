import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_model.dart';
import 'package:quiz_app/screens/home_screen.dart';
import 'package:quiz_app/screens/result_screen.dart';
import 'package:quiz_app/widgets/next_button.dart';
import 'package:quiz_app/widgets/options_card.dart';
import 'package:quiz_app/widgets/question_number_widget.dart';
import 'package:quiz_app/widgets/question_text.dart';
import '../widgets/back_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;
  int? selectedOptionIndex;

  void selectOption(int index) {
    setState(() {
      selectedOptionIndex = index;
    });
  }

  void nextQuestion() {
    if (currentQuestionIndex < questionsList.length - 1) {
      setState(() {
        currentQuestionIndex++;
        selectedOptionIndex = null;
      });
    }
  }

  void previousQuestion() {
    if (currentQuestionIndex > 0) {
      setState(() {
        currentQuestionIndex--;
        selectedOptionIndex = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questionsList[currentQuestionIndex];

    return Scaffold(
      body: Container(
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
        child: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 44),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuestionNumberWidget(
                  questionNumbber: 'Question ${currentQuestionIndex + 1}',
                ),
                SizedBox(height: 26),
                QuestionText(currentQuestion: currentQuestion),
                SizedBox(height: 40),
                Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: currentQuestion.options.length,
                    separatorBuilder: (context, index) => SizedBox(height: 14),
                    itemBuilder: (context, index) {
                      final optionText = currentQuestion.options[index];
                      return OptionsCard(
                        text: optionText,
                        isSelected: selectedOptionIndex == index,
                        onTap: () => selectOption(index),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackButtonCustom(
                      onTap: () {
                        if (currentQuestionIndex == 0) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        }
                        previousQuestion();
                      },
                    ),
                    NextButton(
                      onTap: () {
                        if (selectedOptionIndex != null &&
                            currentQuestionIndex < questionsList.length - 1) {
                          nextQuestion();
                        } else if (currentQuestionIndex ==
                            questionsList.length - 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultScreen(),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
