/*
# Like Kotlin , Dart also has null safety
# By default value is not nullable
# ? makes the variable nullable
# if var is used the by default value is null and we don't need to initialise it
# if int/String used, we need to initialise it to some default value
# ! need to use it when we declare variable as nullable
# ?? can be used to pass a default value if value is null
 */

main() {
  int a; // This is not nullable
  //print(a); // so we can't use it without initialization.

  // since we initialized non nullable b so it can be used safely
  int b = 10;
  print(b);

  int? c; // This is nullable i.e default value is null
  print(c); // so we can use it and it will give null

  var x; // This by default will have null value assigned
  print(x); // it will print null

  int? d;
  int? e;
  // Here we asserted that value is not null,but sent null value
  //This will lead to exception
  //calSum(d!,e!); // Null assertion

  int? y = 50;
  print(y);
  //Here we initialised y so compiler knows it is not null. so np need to use !
  calSum(y, e!);

  calSum(d ?? 2, e); // Passing default value if variable is null
}

void calSum(int a, int b) {
  print("sum is ${a + b}");
}
