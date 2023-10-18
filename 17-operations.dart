import 'dart:io';

class Calculator {
  double addition(double num1, double num2) {
    return num1 + num2;
  }

  double subtraction(double num1, double num2) {
    return num1 - num2;
  }

  double multiplication(double num1, double num2) {
    return num1 * num2;
  }

  double division(double num1, double num2) {
    return num1 / num2;
  }
}

void main() {
  Calculator calculator = Calculator();

  print("Menu:");
  print("1. Addition");
  print("2. Subtraction");
  print("3. Multiplication");
  print("4. Division");

  stdout.write("Enter your choice (1add/2sub/3mul/4div): ");
  String choice = stdin.readLineSync() ?? "";

  double num1, num2;

  stdout.write("Enter the first number: ");
  num1 = double.tryParse(stdin.readLineSync() ?? "") ?? 0.0;

  stdout.write("Enter the second number: ");
  num2 = double.tryParse(stdin.readLineSync() ?? "") ?? 0.0;

  double result;

  switch (choice) {
    case "1":
      result = calculator.addition(num1, num2);
      break;
    case "2":
      result = calculator.subtraction(num1, num2);
      break;
    case "3":
      result = calculator.multiplication(num1, num2);
      break;
    case "4":
      result = calculator.division(num1, num2);
      break;
    default:
      result = 0.0;
      print("Invalid choice.");
      break;
  }

  print("Result: $result");
}
