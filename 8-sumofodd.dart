import 'dart:io';

void main() {
  int sum = 0;
  print("Enter the limit");
  String limit = stdin.readLineSync() ?? "";
  var thelimit = int.parse(limit);
  for (int i = 0; i < thelimit; i++) {
    if (i % 2 != 0) {
      sum = sum + i;
    }
  }
  print("The sum is:${sum}");
}
