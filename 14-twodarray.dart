import 'dart:io';

void main() {
  print("Enter the number of rows for both arrays: ");
  int rows = int.parse(stdin.readLineSync()!);
  print("Enter the number of columns for both arrays: ");
  int columns = int.parse(stdin.readLineSync()!);

  List<List<int>> array1 = List.generate(rows, (i) => List<int>.filled(columns, 0));
  List<List<int>> array2 = List.generate(rows, (i) => List<int>.filled(columns, 0));

  print("Enter values for the first array:");
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < columns; j++) {
      print("Enter value at position ($i, $j): ");
      array1[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  print("Enter values for the second array:");
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < columns; j++) {
      print("Enter value at position ($i, $j): ");
      array2[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  List<List<int>> result = addArrays(array1, array2);
  displayArray(result);
}

List<List<int>> addArrays(List<List<int>> arr1, List<List<int>> arr2) {
  int rows = arr1.length;
  int columns = arr1[0].length;
  List<List<int>> result = List.generate(rows, (i) => List<int>.filled(columns, 0));

  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < columns; j++) {
      result[i][j] = arr1[i][j] + arr2[i][j];
    }
  }

  return result;
}

void displayArray(List<List<int>> arr) {
  for (List<int> row in arr) {
    print(row);
  }
}
