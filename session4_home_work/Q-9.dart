void main() {
  List<int> numbers = [1, 2, 2, 3, 3, 4];

  Set<int> uniqueNumbers = numbers.toSet();
  print(uniqueNumbers);

  if (uniqueNumbers.length < numbers.length) {
    print("duplicates were removed");
  }
}
