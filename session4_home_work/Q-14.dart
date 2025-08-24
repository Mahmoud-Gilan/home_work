void main() {
  List<int> scores = [66, 90, 78, 12];

  if (scores == null || scores.isEmpty) {
    print('No scores');
  } else {
    int sum = scores.first + scores.last;
    print("$sum,${sum >= 40}");
  }
}
