//1
//22
//333
//4444
//55555

import 'dart:io';
void main()    
{    
  //declaring variables
  int i,j; 

  //looping    
  for(i=1;i<=5;i++){ 
    for(j=1;j<=i;j++){
          stdout.write(i); 
    }
    stdout.writeln();
  }    
}