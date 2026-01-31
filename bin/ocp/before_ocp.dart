enum EmployeeType { junior, senior }

class Employee {
  final String id;
  final String name;
  final double salary;
  final EmployeeType type;

  const Employee({
    required this.id,
    required this.name,
    required this.salary,
    required this.type,
  });

  double calculateOverTime(double hours) {
    // OCP violation: adding a new employee type requires modifying this method.
    switch (type) {
      case EmployeeType.junior:
        return ((salary / 20) / 8) * hours;
      case EmployeeType.senior:
        return ((salary / 20) / 8) * hours * 2;
    }
  }
}

void main() {
  final employee = Employee(
    id: '1',
    name: 'M',
    salary: 5000,
    type: EmployeeType.senior,
  );
  print('overtime = ${employee.calculateOverTime(10)} USD');
}
