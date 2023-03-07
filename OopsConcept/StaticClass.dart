/*
# Static Method or Variable belongs to class Level
# Static Method can not access no static method or variable
# Normal Method can access static Method or variable
 */

void main(){

  print(Circle.PI); // calling static variable by class def
  Circle.calculateArea(); // calling static method by class def

  var c = Circle();
  c.changeRadius();
}

class Circle{

  static const PI = 3.14;// static const variable can not be changed.It is final
  static var RADIUS = 10;

  String color  = "Blue";

  static void calculateArea(){
    // Not possible to access non static method or variable
    //changeRadius();
    //this.color;
    print("Area is ${PI * RADIUS*RADIUS}");
  }

  void changeRadius(){
    RADIUS = 20;
    calculateArea();
  }
}