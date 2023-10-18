import 'dart:io';

void main(){
  var m=1;
  for(var i=1;i<=4;i++){
    for(var j=1;j<=i;j++){
      stdout.write("${m} ");
      m++;
    }
    print("");
  }
}