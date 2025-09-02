void main() {
  person(firstName: 'Tharwat', lastName: 'Samy', age: 30);
  person(firstName: 'Mahmoud', lastName: 'Gilan');
}

void person({required String firstName, required String lastName, int? age}) {
  print('fullName: $firstName $lastName');

  if (age != null) {
    print('Age: $age');
  }
}
