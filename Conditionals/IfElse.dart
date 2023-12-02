/*
Same like JAVA
 */
void main() {
  var salary = 900000;

  // if else
  if (salary >= 750000) {
    print("Taxable under new regime");
  } else if (salary > 500000 && salary < 750000) {
    print("Not taxable under new regime");
  } else {
    print("Not Taxable");
  }

  // Ternary operator
  var a = 9;
  var b = 10;

  // traditional way
  // if(a>b){
  //   print("a is greater");
  // }else{
  //   print("b is greater");
  // }

  var greaterNum = a > b ? "a is greater" : "b is greater";
  print(greaterNum);

  // Conditional Expression
  /*
  If value is null will return the statement 2 after ??
   */
  var name = null;
  var result = name ?? "Guest User";
  print(result);

  void a1(String? v) {
    print(v);
  }

  name ?? a1(result);
}
