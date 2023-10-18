import 'dart:io';

void main() {
  bool isPalindrome(String text) {
    return text == text.split("").reversed.join("");
  }

  print("Enter a word: ");
  String word = (stdin.readLineSync())!;

  if (isPalindrome(word)) {
    print("${word} is a palindrome!");
  } else {
    print("${word} is not a palindrome.");
  }
}
