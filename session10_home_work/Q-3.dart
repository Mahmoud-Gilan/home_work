class Grade {
  double _score = 0;

  double get score => _score;

  set score(double value) {
    if (value < 0 || value > 100) {
      print("Invalid score");
    } else {
      _score = value;
    }
  }

  bool get isPass {
    if (_score >= 50) {
      return true;
    } else {
      return false;
    }
  }
}

void main() {
  var score1 = Grade();
  score1.score = 85;
  print('Score: ${score1.score}, Pass: ${score1.isPass}'); // Pass

  var score2 = Grade();
  score2.score = 45;
  print('Score: ${score2.score}, Pass: ${score2.isPass}'); // Fail

  var score3 = Grade();
  score3.score = 110;
  print('Score: ${score3.score}, Pass: ${score3.isPass}'); // Invalid score

  var score4 = Grade();
  score4.score = -10;
  print('Score: ${score4.score}, Pass: ${score4.isPass}'); // Invalid score
}
