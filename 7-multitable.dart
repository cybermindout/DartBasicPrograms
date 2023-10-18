import 'dart:io';

void main() {
  print("Enter the number:");
  String number = stdin.readLineSync() ?? "";
  var userInput = int.parse(number);
  for (int i = 1; i <= 10; i++) {
    print("${i}  * ${userInput} =${i * userInput}");
  }
}
