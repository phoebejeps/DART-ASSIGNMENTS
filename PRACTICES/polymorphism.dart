class Animal {
  void makeSound() {
    print("Animal makes a sound");
  }
}

class Dog extends Animal {
  
  void makeSound() {
    print("DOG Woof!");
  }
}

class Cat extends Animal {
  
  void makeSound() {
    print("CAT Meow!");
  }
}

void main() {
  List<Animal> animals = [Dog(), Cat()];
  for (var person in animals) {
    person.makeSound();
  }
}
