import 'dart:io';

void main() {
  print("Enter some text:");
  String input = stdin.readLineSync() ?? "";

  String output = input.replaceAll(RegExp('\\s+')," ");
  
  print("Output with single spaces: $output");
}