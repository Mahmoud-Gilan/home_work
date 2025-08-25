void main() {
  List<int> list = [1, 2, 2, 3, 4, 4, 5];

  Set<int> uniqueList = list
      .toSet(); // Convert list to set to remove duplicates
  print(uniqueList); // Output: {1, 2, 3, 4, 5}
  print(uniqueList.length); // Output: 5
}
