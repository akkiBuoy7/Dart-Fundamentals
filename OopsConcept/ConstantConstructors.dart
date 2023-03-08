/*
constant constructor must have final type parameters
constant construct can be called by new/const or implicitly
 */
class SomeClass{
  final int? x;
  final int y;
  //int? z; // non final variable not possible

  const SomeClass(this.x,this.y);
}

class Singleton{
  const Singleton();
}

void main(){

  var obj1 = SomeClass(5, 6);
  var obj2 = SomeClass(5, 6);
  print(obj1==obj2); // this will give false


  var obj3 = const SomeClass(5, 6);
  var obj4 = const SomeClass(5, 6);
  print(obj3==obj4); // this will give true

  var singleton1 = const Singleton();
  var singleton2 = const Singleton();

  print(singleton1==singleton2);
  print(singleton1.hashCode);
  print(singleton2.hashCode);
}