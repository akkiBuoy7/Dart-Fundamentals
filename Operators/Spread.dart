main() {
  List<int> l1 = [0, 1, 2, 3];
  List<int> l2 = [100, 200, 300, 400];
  List<int?>? l3 = null;

  List r = [...l1, ...l2]; // since l2 is not null we don't need ? in spread op

  print(r);

  List r1 = [...l1, ...?l3]; // since l3 is null we need ? in spread op
  print(r1);
}
