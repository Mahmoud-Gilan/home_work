void main() {
  List<String> animals = ['Cat', 'Dog', 'Elephant', 'Lion'];

  animals.remove(3); // Remove 'Lion' from the list

  animals[1] = 'Wolf'; // Change 'Dog' to 'Wolf'

  print("${animals[0]}, ${animals[3]}, ${animals.length}");
}
