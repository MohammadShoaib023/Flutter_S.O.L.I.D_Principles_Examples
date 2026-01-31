abstract class Employee {
  final String id;
  final String name;
  final double salary;
  const Employee({required this.id, required this.name, required this.salary});

  double calculateOverTime(double hours);
}

class JuniorEmployee extends Employee {
  JuniorEmployee({
    required String id,
    required String name,
    required double salary,
  }) : super(id: id, name: name, salary: salary);

  @override
  double calculateOverTime(double hours) {
    return ((salary / 20) / 8) * hours;
  }
}

class SeniorEmployee extends Employee {
  SeniorEmployee({
    required String id,
    required String name,
    required double salary,
  }) : super(id: id, name: name, salary: salary);

  @override
  double calculateOverTime(double hours) {
    return ((salary / 20) / 8) * hours * 2;
  }
}

void main() {
  final juniorEmployee = JuniorEmployee(id: '1', name: 'M', salary: 5000);
  print(
      'junior overtime = ${juniorEmployee.calculateOverTime(10)} USD');

  final seniorEmployee = SeniorEmployee(id: '2', name: 'K', salary: 5000);
  print(
      'senior overtime = ${seniorEmployee.calculateOverTime(10)} USD');
}
