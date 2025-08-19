void main() {
  List<int> numbers = [4, 4, 5, 6, 6, 7];

  Set<int> uniqueNumbers = numbers
      .toSet(); // Convert list to a set to remove duplicates
  print(uniqueNumbers); // Convert list to a set to remove duplicates

  uniqueNumbers.add(8); // Add a new number to the list
  print(uniqueNumbers); // Output the length of the listnumbers.add(8);

  uniqueNumbers.remove(4); // Remove the number 4 from the set
  print(uniqueNumbers); // Output the length of the set

  print(uniqueNumbers.contains(6)); // Check if the set contains the number 6
}
