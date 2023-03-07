/*
 #Like kotlin both abstract and normal method allowed within abstract class
 #Like Java no abstract variable is allowed
 #Need to override abstract method mandatory
 #No need to override abstract method
 */

void main(){

  // var s = Shape(); // Abstract class can not be instantiated

  var rect = Rectangle(10, 20);
  rect.draw();

  var circle = Circle(30, 50);
  circle.draw();
}

abstract class Shape{

  void draw(); // abstract method, need to override mandatory

  void concreteFunc(){
    print("It is a normal function");
  }
}

class Rectangle extends Shape{

  int x;
  int y;

  Rectangle(this.x,this.y);

  @override
  void draw() {
    print("Rectangle Drawn with x coordinate $x and y coordinate $y");
  }

}

class Circle extends Shape{

  int x;
  int y;

  Circle(this.x,this.y);

  @override
  void draw() {
    print("Rectangle Drawn with x coordinate $x and y coordinate $y");
  }

}