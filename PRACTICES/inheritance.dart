class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void greet() {
    print("Hello, my name is $name and I am $age years old.");
  }
}

class Student extends Person {
  String school;

  Student(String name, int age, this.school) : super(name, age);

  void study() {
    print("$name is studying at $school.");
  }
}
  
class Teacher extends Person {

  int id;
  String Community;
  String school;
    
  Teacher(String name,  this.id, int age,  this.school, this.Community,) : super(name, age);

   void teach() {
    print("$name of id number $id, and i am $age years old, teaching at $school  and lives $Community.");
  }
}

void main() {
  var student1 = Student("Bob", 20, "UoN University");
  student1.greet(); 
  student1.study();

  print("\nTeacher class");

  // ignore: unused_local_variable
  var teacher1 = Teacher("KELVIN", 445, 35, "Uzima University", "Kanyamoni",);
  teacher1.greet();
  teacher1.teach();
}
