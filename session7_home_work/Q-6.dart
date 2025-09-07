import 'dart:io';
import 'dart:math';

void main() {
  // Generate a random number between 1 and 20
  Random random = Random();
  int target = random.nextInt(20) + 1;

  print('Guess the number between 1 and 20. You have 3 tries.');

  bool guessedCorrectly = false;
  for (int attempt = 1; attempt <= 3; attempt++) {
    stdout.write('Attempt $attempt: ');
    int guess = int.parse(stdin.readLineSync()!);

    if (guess == target) {
      print('correct number');
      guessedCorrectly = true;
      break;
    } else if (guess < target) {
      print('Too low!');
    } else {
      print('Too high!');
    }
  }

  if (!guessedCorrectly) {
    print('The correct number was $target.');
  }
}
