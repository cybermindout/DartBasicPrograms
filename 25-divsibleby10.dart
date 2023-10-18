import 'dart:io';

bool div(int num) {
  return num % 10 == 0;
}

void main() {
  print("enter the number");
  var num = int.parse(stdin.readLineSync() ?? "");

  var result = div(num);
    print(result);
  
}