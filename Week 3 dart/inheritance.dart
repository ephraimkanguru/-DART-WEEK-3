// Superclass (Parent Class)
class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  // Method to display employee details
  void displayDetails() {
    print('Name: $name, Salary: Ksh $salary');
  }
}

// Subclass (Child Class) inheriting from Employee
class Manager extends Employee {
  String department;

  Manager(String name, double salary, this.department) : super(name, salary);

  // Overriding the displayDetails method
  @override
  void displayDetails() {
    super.displayDetails();
    print('Department: $department');
  }
}

void main() {
  // Create an Employee instance
  Employee emp = Employee('John Doe', 50000);
  emp.displayDetails();

  // Create a Manager instance
  Manager manager = Manager('Alice', 80000, 'HR');
  manager.displayDetails();
}
