import 'dart:io';

void main() {
  print("Enter the amout of principal");
  String? userInput1 = stdin.readLineSync();
  num p = int.parse(userInput1!);
  print("Enter Rate of interest");
  String? userInput2 = stdin.readLineSync();
  num r = double.parse(userInput2!);
  print("Enter number of years");
  String? userInput3 = stdin.readLineSync();
  num n = double.parse(userInput3!);

  print("The simple interest is ${(p * r * n) / 100}");
}
