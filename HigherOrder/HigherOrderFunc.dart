void main(){

  Function f = (int a,int b) => print("sum is ${a+b}");
  someFunction(5, 4, f);

  var someFunctionCall = someFunction1("Result is ");
  someFunctionCall(5,4);

  //Alternate syntax to call
  someFunction1("Result is ")(5,4);

  var adapter = Adapter();
  // without Function object a normal function can also be passed as a param
  void foo (String s){
    print(s);
  }
  adapter.someMethod(foo);


  // Using Higher order function like a callback
  adapter.someCallback((position) {
    print("The position is $position");
  });

}

// Function accepting another function as parameter
void someFunction(int a,int b,Function foo){
  //foo(a,b);
  foo.call(a,b);
}

// Function returning another function
Function someFunction1(String s){
  Function f = (int a,int b)=> print("$s ${a*b}");
  return f;
}

class Adapter{

  // Using a normal function as param in higher order function
  void someMethod(void action(String msg)){
      // action.call("Lambda Function called");
      action("Lambda Function called");
  }

  void someCallback(void callback(int position)){
    callback.call(3);
  }

}