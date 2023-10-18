
// 28.  Write a program that will take the bits in a number and shift them to the left end. For example, 01010110 (binary) would become 11110000 (binary).

import 'dart:io';

void main() {
  stdout.write('Enter a binary number: ');
  String Input = stdin.readLineSync()!;
  String Result = '';

  for (int i = 0; i < Input.length; i++) {
    if (Input[i] == '1')Result += '1';
  }

  for (int i = 0; i < Input.length; i++) {
    if (Input[i] == '0') Result += '0';
  }

  print('Binary Input: $Input');
  print('Binary Result: $Result');
}