class QuestionsModel {
  final String questionsText;
  final List<String> options;

  QuestionsModel({required this.questionsText, required this.options});
}

final List<QuestionsModel> questionsList = [
  QuestionsModel(
    questionsText:
        "How would you describe your level of satisfaction with the healthcare system?",
    options: ["Strongly satisfied", "Satisfied", "Neutral", "Not satisfied"],
  ),
  QuestionsModel(
    questionsText: "What vitamins do you take?",
    options: ["Vitamin D3", "Vitamin B", "Zinc", "Magnesium"],
  ),
];
