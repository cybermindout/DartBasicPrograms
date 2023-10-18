import 'dart:io';

void main() {
  List<int> array = [];

  print("Enter size:");
  int size = int.parse(stdin.readLineSync()!);

  getArray(array, size);
  displayArray(array);
}
void getArray(List<int> array, int size) {
  print("Enter elements of the array:");
  for (var i = 0; i < size; i++) {
    var value = int.parse(stdin.readLineSync()!);
    array.add(value);
  }
}

void displayArray(List<int> array) {
  print("Array elements:");
  print(array);
}