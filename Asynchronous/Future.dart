void main() {
  //futureSequence();
  //futureExecSync()
  futureExecAsync();
}

// This will execute synchronously
/*
    start
    1
    end
 */
void futureExecSync() async {
  late final a;

  print('start');

  // Here await will block the isolate and wait for 1 sec

  //a = await Future.delayed(Duration(seconds: 1),()=>1);
  await Future.delayed(Duration(seconds: 1), () => 1)
      .then((value) => a = value);

  print(a.toString());

  print('end');
}

// This will execute asynchronously
/*
    start
    end
    1
 */
void futureExecAsync() async {
  int a = 0;

  print('start');

  // Here isolate will not be blocked value will be returned after 1 sec
  Future.delayed(Duration(seconds: 1), () => 1).then((value) {
    a = value;
    print(a.toString());
  });

  /*
  This will print 0 as value is not returned yet by future
   */
  print(a.toString());

  print('end');
}

void futureSequence() {
//Output =>
// Start End 5 7 9 1 6 8 11 10 2 12 3 4

  print('Start');

  Future(() => 1).then(print);
  Future(() => Future(() => 2)).then(print);

  Future.delayed(Duration(seconds: 1), () => 3).then(print);
  Future.delayed(Duration(seconds: 1), () => Future(() => 4)).then(print);

  Future.value(5).then(print);
  Future.value(Future(() => 6)).then((value) => print(value));

  Future.sync(() => 7).then((value) => print(value));
  Future.sync(() => Future(() => 8)).then((value) => print(value));

  Future.microtask(() => 9).then((value) => print(value));
  Future.microtask(() => Future(() => 10)).then((value) => print(value));

  Future(() => 11).then((value) => print(value));
  Future(() => Future(() => 12)).then((value) => print(value));

  print('End');
}
