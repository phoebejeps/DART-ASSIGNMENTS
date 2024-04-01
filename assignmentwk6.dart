void main() {
  // Task 1: Function to add two numbers
  int sum = addNumbers(5, 7);
  print('Task 1: Sum of two numbers is $sum\n');

  // Task 2: Printing numbers from 1 to 10 using a for loop
  print('Task 2: Numbers from 1 to 10:');
  printNumbers();
  print('');

  // Task 3: Using a switch statement for string values
  print('Task 3: Switch statement for string values:');
  switchString('hello');
  switchString('goodbye');
  switchString('unknown');
  print('');

  // Task 4: Printing numbers from 20 to 10 using a while loop
  print('Task 4: Numbers from 20 to 10:');
  printNumbersDescending();
  print('');

  // Task 5: Checking if a number is even or odd using if-else
  print('Task 5: Checking if a number is even or odd:');
  checkEvenOrOdd(17);
  checkEvenOrOdd(20);
  print('');

  // Task 6: Finding the largest number in a list
  List<int> numbers = [12, 45, 78, 23, 9, 65, 43];
  print('Task 6: Finding the largest number in a list:');
  int largest = findLargest(numbers);
  print('Largest number in the list is $largest\n');

  // Task 7: Using try-catch to catch an exception
  print('Task 7: Using try-catch to catch an exception:');
  catchError();
}

// Task 1: Function to add two numbers
int addNumbers(int a, int b) {
  return a + b;
}

// Task 2: Printing numbers from 1 to 10 using a for loop
void printNumbers() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// Task 3: Using a switch statement for string values
void switchString(String value) {
  switch (value) {
    case 'hello':
      print('Hi there!');
      break;
    case 'goodbye':
      print('See you later!');
      break;
    default:
      print('Unknown value');
  }
}

// Task 4: Printing numbers from 20 to 10 using a while loop
void printNumbersDescending() {
  int i = 20;
  while (i >= 10) {
    print(i);
    i--;
  }
}

// Task 5: Checking if a number is even or odd using if-else
void checkEvenOrOdd(int number) {
  if (number % 2 == 0) {
    print('$number is even');
  } else {
    print('$number is odd');
  }
}

// Task 6: Finding the largest number in a list
int findLargest(List<int> numbers) {
  if (numbers.isEmpty) {
    throw Exception('List is empty');
  }
  int largest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  return largest;
}

// Task 7: Using try-catch to catch an exception
void catchError() {
  try {
    // code that might throw an exception
    var result = 5 ~/ 0; // Division by zero will throw an exception
    print(result);
  } catch (e) {
    // handle the exception
    print('Error: $e');
  }
}
