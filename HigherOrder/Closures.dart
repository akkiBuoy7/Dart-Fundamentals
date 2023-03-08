/*
# The closures indicates that a variable in any other global scope
can be modified inside a lambda function
which is not allowed in kotlin.
 */
void main(){

  var globalVariable = "Hi I am global variable";
  print(globalVariable);

  var modify = (){
    globalVariable = "Hey I am modified into local variable";
    print(globalVariable);
  };
  modify();
}