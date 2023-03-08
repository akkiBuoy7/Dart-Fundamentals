/*
 #Like kotlin both abstract and normal method allowed within abstract class
 #Like Java no abstract variable is allowed
 #Need to override abstract method mandatory
 #No need to override normal method
 */

void main(){

  // var s = Shape(); // Abstract class can not be instantiated


  var rect = Rectangle(10, 20);
  rect.setType = "Rectangle"; // using parent abstract class method
  rect.draw();


  var circle = Circle(30, 50);
  circle.setType = "Circle"; // using parent abstract class method
  circle.draw();
}

abstract class Shape{

  String? type;

  void draw(); // abstract method, need to override mandatory

  String? get getType => type;
  void set setType(String? value) => type=value;

  void concreteFunc(){
    print("It is a normal function");
  }
}

class Rectangle extends Shape{

  int x;
  int y;

  @override
  String? type; // overriding abstract variable

  Rectangle(this.x,this.y);

  @override
  void draw() {
    print("$type Drawn with x coordinate $x and y coordinate $y");
  }

}

class Circle extends Shape{

  int x;
  int y;
  @override
  String? type; // overriding abstract variable

  Circle(this.x,this.y);

  @override
  void draw() {
    print("$type Drawn with x coordinate $x and y coordinate $y");
  }

}