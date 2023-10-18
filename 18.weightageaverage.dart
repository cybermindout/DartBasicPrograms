import 'dart:io';

void main(){
  double total;
  print("enter the marks scored");
  print("written test:");
  int w=int.parse(stdin.readLineSync()!);
  print("lab exams:");
  int l=int.parse(stdin.readLineSync()!);
  print("assignments:");
  int a=int.parse(stdin.readLineSync()!);

  total=((w*70)/100 + (l*20)/100 + (a*10)/100);
  print("overall grade: ${total}");
}