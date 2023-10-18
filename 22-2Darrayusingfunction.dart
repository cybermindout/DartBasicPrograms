import 'dart:io';

class TwoDArray {
  late List<List<int>> array;

  TwoDArray(int rows, int cols) {
    array = List.generate(rows, (i) => List.filled(cols, 0));
  }

  void getArray() {
    for (var i = 0; i < array.length; i++) {
      for (var j = 0; j < array[i].length; j++) {
        print("Enter the element for row ${i + 1} and column ${j + 1}:");
        array[i][j] = int.parse(stdin.readLineSync() ?? '0');
      }
    }
  }

  void displayArray() {
    for (var row in array) {
      for (var value in row) {
        stdout.write("$value\t");
      }
      stdout.writeln();
    }
  }

  void addArray(List<List<int>> otherArray) {
    if (array.length != otherArray.length ||
        array.isEmpty ||
        array[0].length != otherArray[0].length) {
      print("Arrays must have the same dimensions to be added.");
      return;
    }

    for (var i = 0; i < array.length; i++) {
      for (var j = 0; j < array[i].length; j++) {
        array[i][j] += otherArray[i][j];
      }
    }
  }
}

void main() {
  print("Enter the number of rows for the arrays:");
  int rows = int.parse(stdin.readLineSync() ?? '0');
  print("Enter the number of columns for the arrays:");
  int cols = int.parse(stdin.readLineSync() ?? '0');

  TwoDArray array1 = TwoDArray(rows, cols);
  TwoDArray array2 = TwoDArray(rows, cols);

  print("Enter the elements of the first array:");
  array1.getArray();

  print("Enter the elements of the second array:");
  array2.getArray();

  print("\nFirst Array:");
  array1.displayArray();

  print("\nSecond Array:");
  array2.displayArray();

  array1.addArray(array2.array);

  print("\nSum of the Arrays:");
  array1.displayArray();
}