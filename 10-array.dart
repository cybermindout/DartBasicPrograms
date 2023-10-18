import 'dart:io';

void main() {
  print("Enter size:");
  int size = int.parse(stdin.readLineSync()!);

  List<int> array1 = [];
  List<int> array2 = [];
  List<int> temp = [];

  print("Enter elements of the 1st array:");
  for (int i = 0; i < size; i++) {
    array1.add(int.parse(stdin.readLineSync()!));
  }

  print("Enter elements of the 2nd array:");
  for (int i = 0; i < size; i++) {
    array2.add(int.parse(stdin.readLineSync()!));
  }

  print("1st array: $array1");
  print("2nd array: $array2");

  temp = array1;
  array1 = array2;
  array2 = temp;

  print("After swapping:");
  print("1st array: $array1");
  print("2nd array: $array2");
}
