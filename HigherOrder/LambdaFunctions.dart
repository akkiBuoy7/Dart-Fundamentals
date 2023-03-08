void main(){

  // 1st way
  Function addingNumbers = (int a,int b){ // function without return type
    var s=a+b;
    print(s);
  };

  var multiplyingNumbers = (int a,int b){ // function with return type
    return a*b;
  };

  addingNumbers(5,4);
  print(multiplyingNumbers(5,4));

  print("\n");

  //2nd way using short syntax if function is single line
  Function addingNum = (int a,int b) => print("${a+b}");
  Function multiNum = (int a,int b) => "${a*b}"; // no need to mention return
  // type

  // Using => returns a Function object, but we can also use var
  var multiNumVar = (int a,int b) => "${a*b}";
  addingNum(5,4);
  print(multiNum(5,4));

}