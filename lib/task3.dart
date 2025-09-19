import 'dart:io';

void main() {
  // Take input from user
  stdout.write('Enter an integer n: ');
  int n = int.parse(stdin.readLineSync()!);

  print('\nNumber Pyramid Pattern:');

  // Outer loop for rows
  for (int i = 1; i <= n; i++) {
    String row = '';

    // Inner loop for numbers in each row
    for (int j = 1; j <= i; j++) {
      row += '$j ';
    }

    print(row);
  }
}