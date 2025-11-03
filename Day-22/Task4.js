//Create a class Employee with name and salary — add a method to display info.
class Employee{
    constructor(name,salery){
        this.name=name;
        this.salery=salery;
    }
    display(){
        console.log(`Employee Name: ${this.name}`);
        console.log(`Employee salery:${this.salery}`);        
    }
}
const emp1= new Employee("Aarthi Vaasugi",50000);
const emp2 = new Employee("Keerthi",100000);
emp1.display();
emp2.display();