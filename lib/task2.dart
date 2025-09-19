import 'dart:io';

void main() {
  // 1. Take input for name and age
  stdout.write('Enter your name: ');
  String name = stdin.readLineSync()!;

  stdout.write('Enter your age: ');
  int age = int.parse(stdin.readLineSync()!);

  // Check eligibility
  if (age < 18) {
    print('Sorry $name, you are not eligible to register.');
    return;
  }

  // 2. Ask how many numbers to enter
  stdout.write('How many numbers do you want to enter? ');
  int n = int.parse(stdin.readLineSync()!);

  // 3. Store numbers in a list and calculate
  List<int> numbers = [];
  for (int i = 0; i < n; i++) {
    stdout.write('Enter number ${i + 1}: ');
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  // Calculate required values
  int evenSum = 0;
  int oddSum = 0;
  int largest = numbers[0];
  int smallest = numbers[0];

  for (int num in numbers) {
    if (num % 2 == 0) {
      evenSum += num;
    } else {
      oddSum += num;
    }

    if (num > largest) largest = num;
    if (num < smallest) smallest = num;
  }

  // 4. Print results
  print('\nResults');
  print('Numbers entered: $numbers');
  print('Sum of even numbers: $evenSum');
  print('Sum of odd numbers: $oddSum');
  print('Largest number: $largest');
  print('Smallest number: $smallest');
}