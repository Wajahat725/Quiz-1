                           // QUIZ-2

import 'dart:io';

void main() {

  List<int> numbers = []; // make a list to store numbers

  print('Please Enter 6 integers:'); // tell the user to enter 6 integers

  // Take input of 6 integers from user
  for (int i = 0; i < 6; i++) {
    stdout.write('Enter the number ${i + 1}: ');
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  // To Calculate sum of odd numbers
  int sumOfOdds = 0;
  for (int num in numbers) {
    if (num % 2 != 0) {
      sumOfOdds += num;
    }
  }

  // TO Find the smallest number
  int smallest = numbers[0];
  for (int num in numbers) {
    if (num < smallest) {
      smallest = num;
    }
  }

  // Print results
  print('\n--- Results ---');
  print('List of all numbers: $numbers');
  print('Sum of odd numbers: $sumOfOdds');
  print('Smallest number: $smallest');
}