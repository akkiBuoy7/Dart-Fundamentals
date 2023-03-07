void main(){

  // 1st way
  Function addingNumbers = (int a,int b){ // function without return type
    var s=a+b;
    print(s);
  };

  var mutiplyingNumbers = (int a,int b){ // function with return type
    return a*b;
  };

  addingNumbers(5,4);
  print(mutiplyingNumbers(5,4));

  print("\n");

  //2nd way using short syntax if function is single line
  Function addingNum = (int a,int b) => print("${a+b}");
  var multiNum = (int a,int b) => print(a*b);

  addingNum(5,4);
  multiNum(5,4);
}