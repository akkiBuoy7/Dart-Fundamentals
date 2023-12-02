void main() {
  // creating set from List
  Set<int?> numberSet = Set.from([10, 20, 30]);

  //adding
  numberSet.add(90);

  for (int? element in numberSet) {
    // using element
    print(element);
  }
  print("===========");

  numberSet.forEach((element) {
    print(element);
  });
  print("===========");

  print("=====Set======");

  // using constructor
  Set<int> numberSet1 = Set();

  //adding
  numberSet1.add(10);
  numberSet1.add(20);
  numberSet1.add(30);
  numberSet1.add(40);

  numberSet1.forEach((element) {
    print(element);
  });
  print("===========");

  //delete
  numberSet1.remove(40); // using element
  for (int? element in numberSet1) {
    // using element
    print(element);
  }
  print("===========");
  print(numberSet1.contains(30));
  print(numberSet1.isEmpty);
  print(numberSet1.length);

  print("===========");
  var set2 = <String>['India', 'Australia', 'England'];

  var x = set2.map((e) => "mapping $e");
  print(x);
}
