void main() {
  List<int>? scores = [];

  if (scores == null || scores.isEmpty) {
    print('No scores');
  } else {
    int sum = scores.first + scores.last;
    print("$sum,${sum >= 40}");
  }
}
