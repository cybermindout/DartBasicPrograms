import 'dart:io';

void main() {
  List<int> array=[];
  List<int> result=[];
  print("enter the  array size");
  int n=int.parse(stdin.readLineSync()!);
  print("enter the array elements ");
  for(var i=0;i<n;i++){
    var value1=int.parse(stdin.readLineSync() !);
    array.add(value1);
  }
  for(var i=0;i<array.length-1;i++){
   int mul=array[i]*array[i+1];
   result.add(mul);
  }
  print(result);
  }

 