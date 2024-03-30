void greet({required String name, String? greeting}) {
  if (greeting != null) {
    print('$greeting, $name!');
  } else {
    print('Hello, $name!');
  }
}

void main() {
  greet(name: 'Bob'); 
  greet(name: 'Alice', greeting: 'Hi'); 
}
