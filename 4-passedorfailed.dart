import 'dart:io';

void main() {
  print("enter the mark to check:");
  String userInput = stdin.readLineSync() ??"";
  num mark = int.parse(userInput);
  if (mark < 50) {
    print("failed");
  } else {
    print("passed");
  }
}
