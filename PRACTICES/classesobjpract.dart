class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void greet() {
    print("Hello, my name is $name and I am $age years old.");
  }
  
}

void main() {
  var person1 = Person("Alice", 30);
  person1.greet(); // Output: Hello, my name is Alice and I am 30 years old.
  // ignore: unused_local_variable
  var friend = Person("Miriel", 35);
  friend.greet();
}
