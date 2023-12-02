class Cascade {
  int? a;
  int? b;

  void set(int? x, int? y) {
    a = x;
    b = y;
  }

  void addResult() {
    var r = a! + b!;
    print(r);
  }
}

main() {
  var obj = Cascade();

  // Cascade helps to perform a sequence of operation on an object just like scope in kotlin
  obj
    ..set(3, 9)
    ..addResult();
}
