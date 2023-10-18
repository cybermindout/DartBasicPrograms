import 'dart:io';

void main(){
  print("Enter the number");
  int value=int.parse(stdin.readLineSync()!);

  if(value<=1){
    print("Number is not prime");
  }
  else if(value==2){
    print("Number is prime");
  }
  else if(value>2){
    for(int i=2;i<=(value/2);i++){
      if((value%i)==0){
        print("Number is not prime");
        return;
      }
    }
    print("Number is prime");
  }
  else{
    print("Number is not prime");
  }

}