void main() {
  List<Map<String, dynamic>> students = [
    {"name": "Mahmoud", "grade": 35},
    {"name": "Samy", "grade": 40},
  ];

  print(students[1]['grade']); // Output the grade of the second student

  double average = (students[0]['grade'] + students[1]['grade']) / 2;
  print(average); // Output the average grade of the two students
}
