import 'dart:io';

void main(){
  var tax;
  print("enter annual income");
  int income=int.parse(stdin.readLineSync()!);

  if(income<=250000){
    print("no tax");
      }
  else if(income>250000 && income<=500000){
    tax=(income*5)/100;
     print("tax:${tax}");
      }
  else if(income>500000 && income<=1000000){
    tax=(income*20)/100;
     print("tax:${tax}");
      }
  else if(income>1000000 && income<=5000000){
    tax=(income*30)/100;
     print("tax:${tax}");
      }
  else
  print("incorrect input");
}