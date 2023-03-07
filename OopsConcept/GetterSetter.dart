/*
 Like Kotlin, Dart also has default getter and setter
 We can define custom getter and setter for a variable like Java
 We don't need to declare the variable separately custom getter and setter
 methods only initialise the variable
 */
void main(){

  var s = Student();
  s.name = 'Akash'; // default setter
  print(s.name); // default getter

  s.percentage = 455;
  print("percentage is ${s.percentage}");
}

class Student{

  var name;
  var _percent=0.0; // private instance variable to return the Percentage value



  /*
  Here percentage itself is a instance variable
  we defined it with custom getter and setter
  so no need to define a variable with custom getter and setter seperately
   */
  // custom setter
  void set percentage(var marks)=> _percent = (marks/500) *100;
  // custom getter
  double get percentage => _percent;
}