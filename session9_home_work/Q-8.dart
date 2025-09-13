import 'dart:io';

void main() {
  stdout.write("Enter a sentence: ");
  String? input = stdin.readLineSync();
  if (input == null || input.isEmpty) {
    print("No input provided.");
    return;
  }
  List<String> sentence = input
      .split(RegExp(r'\s+'))
      .map((w) => w.replaceAll(RegExp(r'^\W+|\W+$'), ''))
      .map((w) => w.toLowerCase())
      .where((w) => w.isNotEmpty)
      .toList(); // Clean and filter words

  Map<String, int> frequency = {};
  for (String word in sentence) {
    frequency[word] = (frequency[word] ?? 0) + 1;
  }
  List<String> uniqueWords = [];
  frequency.forEach((word, count) {
    if (count == 1) {
      uniqueWords.add(word);
    }
  });
  print(uniqueWords); // Print unique words
}
