import 'dart:io';

void main() {
  int i;
  List<int> list1 = [];
  print("Enter the array size");
  int size = int.parse(stdin.readLineSync()!);
  print("Enter the array elements");
  for (i = 0; i < size; i++) {
    var value = int.parse(stdin.readLineSync()!);
    list1.add(value);
  }
  for (i = 0; i < size; i++) {
    for (var j = i + 1; j < list1.length - 1; j++) {
      if (list1[i] < list1[j]) {
        var temp = list1[i];
        list1[i] = list1[j];
        list1[j] = temp;
      }
    }
  }
  print(list1);
}
