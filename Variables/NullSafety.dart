/*
# Like Kotlin , Dart also has null safety
# By default value is not nullable
# ? makes the variable nullable
# ! need to use it when we declare variable as nullable
# ?? can be used to pass a default value if value is null
 */

main(){
  int a; // This is not nullable
  //print(a); // so we can't use it without initialization.

  // since we initialized non nullable b so it can be used safely
  int b=10;
  print(b);

  int? c; // This is nullable i.e default value is null
  print(c); // so we can use it and it will give null

  int? d;
  int? e;
  // Here we asserted that value is not null,but sent null value
  //This will lead to exception
  //calSum(d!,e!); // Null assertion

  calSum(d??2, e??3); // Passing default value if variable is null
}

void calSum(int a , int b){
  print("sum is ${a+b}");
}