import 'dart:io'; 
 
// 2. Interface 
abstract class Animal { 
  late String name; // Adding name property to the Animal interface 
 
  void makeSound(); 
} 
 
// 1. Object-Oriented Model 
class Dog implements Animal { 
  @override 
  String name; // Implementing name property in Dog class 
 
  Dog(this.name); 
 
  @override 
  void makeSound() { 
    print("$name says: Woof!"); 
  } 
} 
 
class Cat implements Animal { 
  @override 
  String name; // Implementing name property in Cat class 
 
  Cat(this.name); 
 
  @override 
  void makeSound() { 
    print("$name says: Meow!"); 
  } 
} 
 
// 3. Method Override 
class AnimalShelter { 
  List<Animal> animals = []; 
 
  void addAnimal(Animal animal) { 
    animals.add(animal); 
  } 
 
  void makeAllSounds() { 
    for (var animal in animals) { 
      animal.makeSound(); 
    } 
  } 
} 
 
// Function to create 'animals.txt' file 
void createAnimalsFile() { 
  File animalsFile = File('animals.txt'); 
  animalsFile.writeAsStringSync('Dog,Buddy\nCat,Whiskers\nDog,Rocky\nCat,Oliver\n'); 
  print("Created 'animals.txt' file."); 
} 
 
// 4. Initializing Instance with Data from a File 
AnimalShelter readAnimalsFromFile(String filename) { 
  var shelter = AnimalShelter(); 
  var file = File(filename); 
  var lines = file.readAsLinesSync(); 
  for (var line in lines) { 
    var parts = line.split(','); 
    var type = parts[0]; 
    var name = parts[1]; 
    if (type == 'Dog') { 
      shelter.addAnimal(Dog(name)); // Providing name argument when creating Dog instance 
    } else if (type == 'Cat') { 
      shelter.addAnimal(Cat(name)); // Providing name argument when creating Cat instance 
    } 
  } 
  return shelter; 
} 
 
// 5. Method Demonstrating the Use of a Loop 
void printAnimalNames(AnimalShelter shelter) { 
  for (var animal in shelter.animals) { 
    print(animal.name); // Accessing name property through the animal instance 
  } 
} 
 
void main() { 
  createAnimalsFile(); 
  var shelter = readAnimalsFromFile('animals.txt'); 
  printAnimalNames(shelter); 
  shelter.makeAllSounds(); 
}
