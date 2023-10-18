import 'dart:io';

void main() {
  for (int i = 1; i <= 5; i++) {
    for (int j = 1; j < i + 1; j++) {
      stdout.write(j);
    }
    print(" ");
  }
}
