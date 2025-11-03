class Employee {
  constructor(name, salary){
    this.name = name;
    this.salary = salary;
}
describe(){
    console.log(`Name: ${this.name}, Salary: ${this.salary}`);
}
}
class Manager extends Employee {
  constructor(name, salary, department) {
    super(name, salary);
    this.department = department;
}
  describe(){
    console.log(`Name: ${this.name}, Salary: ${this.salary}, Department: ${this.department}`);
}
}
const manager1 = new Manager("Aarthi", 50000, "HR");
manager1.describe();
