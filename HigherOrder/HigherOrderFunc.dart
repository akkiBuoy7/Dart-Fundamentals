void main(){

  Function f = (int a,int b) => print("sum is ${a+b}");
  someFunction(5, 4, f);

  var someFunctionCall = someFunction1("Result is ");
  someFunctionCall(5,4);

  //Alternate syntax to call
  someFunction1("Result is ")(5,4);

}

// Function accepting another function as parameter
void someFunction(int a,int b,Function foo){
  foo(a,b);
}

// Function returning another function
Function someFunction1(String s){
  Function f = (int a,int b)=> print("$s ${a*b}");
  return f;
}