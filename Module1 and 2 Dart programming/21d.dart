//    *
//   **
//  ***
// ****
//*****

import 'dart:io';
void main()    
{    
  //declaring variables
  int i,j; 

  //looping    
  for(i=1;i<=5;i++){ 
    for(j=5;j>=i;j--){
          stdout.write("*"); 
    }
    stdout.writeln();
  }    
}