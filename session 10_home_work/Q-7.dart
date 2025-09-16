import 'dart:io';

void main() {
  stdout.write("Enter a List of Numbers: ");
  String? input = stdin.readLineSync();
  if (input == null || input.isEmpty) {
    print("No input provided.");
    return;
  }
  List<int> numbers = input.split(',').map(int.parse).toList();
  if (numbers.isEmpty) {
    print("No numbers to process.");
    return;
  }
  int maxNumber = numbers[0];
  int minNumber = numbers[0];
  int sum = 0;
  int evenCount = 0;
  int oddCount = 0;

  for (var number in numbers) {
    if (number > maxNumber) {
      maxNumber = number;
    }
    if (number < minNumber) {
      minNumber = number;
    }
    sum += number;
    if (number % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }
  double average = sum / numbers.length;

  List<int> aboveAverage = [];
  for (var number in numbers) {
    if (number > average) {
      aboveAverage.add(number);
    }
  }

  print("Max Number: $maxNumber");
  print("Min Number: $minNumber");
  print("difference: ${maxNumber - minNumber}");
  print("Average: $average");
  print("Numbers above average: $aboveAverage");
  print("Even Count: $evenCount");
  print("Odd Count: $oddCount");
}
