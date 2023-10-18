import 'dart:io';

void main() {
  print("enter the total mark to check:");
  String totalMark = stdin.readLineSync() ?? "";
  num mark = double.parse(totalMark);
  if (mark >= 90 && mark <= 100) {
    print("A");
  } else if (mark >= 80 && mark <= 89) {
    print("B");
  } else if (mark >= 70 && mark <= 79) {
    print("C");
  } else if (mark >= 60 && mark <= 69) {
    print("D");
  } else if (mark >= 50 && mark <= 59) {
    print("E");
  } else if (mark < 50) {
    print("Failed");
  }
}
