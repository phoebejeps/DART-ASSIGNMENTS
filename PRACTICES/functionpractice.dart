void main() {
  printGreeting();
  var result = add(5, 3);
  print('The result is $result');
}

void printGreeting() {
  print('Hello, Dart!');
}

int add(int a, int b) {
  return a + b;
}
