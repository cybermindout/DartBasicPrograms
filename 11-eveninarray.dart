import 'dart:io';

void main() {
  int i;
  int count = 0;
  List<int> list1 = [];
  print("Enter the size of array");
  int size = int.parse(stdin.readLineSync()!);
  print("Enter elements of  array");
  for (i = 0; i < size; i++) {
    var value1 = int.parse(stdin.readLineSync()!);
    list1.add(value1);
  }
  for (int element in list1) {
    if (element % 2 == 0) {
      count++;
    }
  }
  print("Number of even numbers : ${count}");
}
