class Course {
  String title;
  int duration;

  Course({required this.title, this.duration = 3});
}

void main() {
  Course course1 = Course(title: "Flutter Development", duration: 4);
  Course course2 = Course(title: "Dart Programming");

  print("Course: ${course1.title}, Duration: ${course1.duration} months");
  print("Course: ${course2.title}, Duration: ${course2.duration} months");
}
