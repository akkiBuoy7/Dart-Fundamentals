void main() {
  // fixed list with default value as 0
  List<int?> numberList = List.filled(5, 0, growable: false);

  //adding
  numberList[0] = 10;
  numberList[2] = 9;

  for (int? element in numberList) {
    // using element
    print(element);
  }

  print("===========");
  //updating
  numberList[0] = 1;

  numberList.forEach((element) {
    print(element);
  });
  print("===========");

  //deleting
  numberList[3] = null;

  for (var i = 0; i < numberList.length; i++) {
    print(numberList[i]);
  }
  print("=====Growable======");

  // Growable List with no fixed size
  List<int> numberListGrowable = [
    300
  ]; // here the first value of the list is 300

  //adding
  numberListGrowable.add(10);
  numberListGrowable.add(20);
  numberListGrowable.add(30);
  numberListGrowable.add(40);
  for (var i = 0; i < numberListGrowable.length; i++) {
    print(numberListGrowable[i]);
  }
  print("===========");

  //update
  numberListGrowable[0] = 100;
  numberListGrowable.forEach((element) {
    print(element);
  });
  print("===========");

  //delete
  numberListGrowable.remove(100); // using element
  numberListGrowable.removeAt(1);
  for (int? element in numberListGrowable) {
    // using element
    print(element);
  }
}
