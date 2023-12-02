main() {
  int? n;

// if n is null then assign value to d
  var d = n ?? 10;
  print(d);

  int a = 5;
  int b = 7;
  // It replaces the if else statement
  var c = (b > a) ? "b is greter than a" : "a is greater than b";
  print(c);
}
