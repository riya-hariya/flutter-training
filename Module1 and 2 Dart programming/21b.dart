//1
//12
//123
//1234
//12345

import 'dart:io';
void main()    
{    
  //declaring variables
  int i,j; 

  //looping    
  for(i=1;i<=5;i++){ 
    for(j=1;j<=i;j++){
          stdout.write(j); 
    }
    stdout.writeln();
  }    
}