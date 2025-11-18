import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_model.dart';
import 'package:quiz_app/screens/home_screen.dart';
import 'package:quiz_app/screens/result_screen.dart';
import 'package:quiz_app/widgets/gardient_background.dart';
import 'package:quiz_app/widgets/next_button.dart';
import 'package:quiz_app/widgets/options__selected_card.dart';
import 'package:quiz_app/widgets/question_number_widget.dart';
import 'package:quiz_app/widgets/question_text.dart';
import 'package:quiz_app/widgets/back_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;
  PageController pageController = PageController();
  List<int?> selectedOptions = List.filled(questionsList.length, null);

  void selectOption(int index) {
    setState(() {
      selectedOptions[currentQuestionIndex] = index;
    });
  }

  void nextQuestion() {
    if (currentQuestionIndex < questionsList.length - 1) {
      pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void previousQuestion() {
    if (currentQuestionIndex > 0) {
      pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GardientBackground(
        child: SafeArea(
          child: PageView.builder(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: questionsList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 44,
                  bottom: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    QuestionNumberWidget(
                      questionNumber: 'Question ${index + 1}',
                      questionImage: questionImages[index],
                    ),
                    SizedBox(height: 26),
                    QuestionText(currentQuestion: questionsList[index]),
                    SizedBox(height: 40),
                    Expanded(
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: questionsList[index].options.length,
                        separatorBuilder: (context, i) => SizedBox(height: 14),
                        itemBuilder: (context, optionIndex) {
                          final optionText =
                              questionsList[index].options[optionIndex];
                          return OptionSelectedCard(
                            text: optionText,
                            isSelected: selectedOptions[index] == optionIndex,
                            onTap: () {
                              setState(() {
                                selectedOptions[index] = optionIndex;
                              });
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BackButtonCustom(onTap: previousQuestion),
                        NextButton(
                          onTap: () {
                            if (selectedOptions[index] != null &&
                                index < questionsList.length - 1) {
                              nextQuestion();
                            } else if (index == questionsList.length - 1) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ResultScreen(
                                    selectedOptions: selectedOptions,
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
