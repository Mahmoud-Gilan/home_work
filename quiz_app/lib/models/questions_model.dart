class QuestionsModel {
  final String questionsText;
  final List<String> options;
  final int correctAnswerIndex;

  QuestionsModel({
    required this.correctAnswerIndex,
    required this.questionsText,
    required this.options,
  });
}

final List<QuestionsModel> questionsList = [
  QuestionsModel(
    questionsText:
        "How would you describe your level of satisfaction with the healthcare system?",
    options: ["Strongly satisfied", "Satisfied", "Neutral", "Not satisfied"],
    correctAnswerIndex: 0,
  ),
  QuestionsModel(
    questionsText: "What vitamins do you take?",
    options: ["Vitamin D3", "Vitamin B", "Zinc", "Magnesium"],
    correctAnswerIndex: 1,
  ),
];

final List<String> questionImages = [
  'assets/images/Group1.svg',
  'assets/images/Group2.svg',
];
