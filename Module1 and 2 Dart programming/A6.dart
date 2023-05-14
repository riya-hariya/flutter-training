//. Create a program using Map
void main() {   
   var student = new Map();   
   student['name'] = 'Harsh';   
   student['age'] = 23;   
   student['course'] = 'B.tech';   
   student['Branch'] = 'Computer Science';
   student['college'] = 'ABC' ;

print(student);   
    
print("The keys are : ${student.keys}");  
print("The values are : ${student.values}");   
print("The length is : ${student.length}");  
}
