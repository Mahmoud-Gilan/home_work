class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void giveRaise(int amount) {
    if (amount > 0) {
      salary = salary + amount;
    }
  }
}

void main() {
  Employee employee = Employee("Samy", 40000);
  print("Name: ${employee.name}, Salary: ${employee.salary}");

  employee.giveRaise(10000);
  print("Name: ${employee.name}, Salary: ${employee.salary}");
}
