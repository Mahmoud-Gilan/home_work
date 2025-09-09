import 'dart:io';

void main() {
  stdout.write('Write a sentence: ');
  String? sentence = stdin.readLineSync();
  if (sentence == null || sentence.isEmpty) {
    print('Invalid input');
    return;
  }

  List<String> words = sentence.split(' ');
  String shortestWord = words[0];
  String longestWord = words[0];

  for (String word in words) {
    if (word.length < shortestWord.length) {
      shortestWord = word;
    }
    if (word.length > longestWord.length) {
      longestWord = word;
    }
  }
  print('Shortest word: $shortestWord');
  print('Longest word: $longestWord');
}
