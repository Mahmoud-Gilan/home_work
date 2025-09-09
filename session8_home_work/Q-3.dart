class Person {
  String name;
  int age;
  Person(this.name, this.age);
}

void main() {
  Person person1 = Person('Mahmoud', 35);
  print('Name: ${person1.name}, Age: ${person1.age}');

  person1.age = 36; // Update age
  print('Name: ${person1.name}, Age: ${person1.age}');
}
