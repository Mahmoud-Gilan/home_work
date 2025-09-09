import 'dart:io';

void main() {
  int? bigestNumber;
  int? scoundBigestNumber;

  Set<int> enteredNumbers = <int>{};

  for (int i = 1; i <= 6; i++) {
    stdout.write('Enter number $i: ');
    int number = int.parse(stdin.readLineSync()!);
    if (number == null) {
      print('Invalid input');
      i--;
      continue;
    }
    enteredNumbers.add(number);

    if (bigestNumber == null || number > bigestNumber) {
      scoundBigestNumber = bigestNumber;
      bigestNumber = number;
    } else if (scoundBigestNumber == null || number > scoundBigestNumber) {
      scoundBigestNumber = number;
    }
  }
  print('Bigest number: $bigestNumber');
  print('Scound bigest number: $scoundBigestNumber');
}
