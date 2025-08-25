void main() {
  List<int> scores = [10, 0, 20, 30];

  scores.removeWhere((number) => number == 0);
  print(scores);

  int totalScore = 0;
  for (int s in scores) {
    totalScore += s;
  }

  print('Total score: $totalScore');
}
