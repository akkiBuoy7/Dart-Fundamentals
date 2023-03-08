enum Fruits{
  APPLE, BANANA, GUAVA
}

void main(){
  
  var fruit=Fruits.APPLE;
  switch(fruit){

    case Fruits.APPLE:
      print("Apple is red");
      break;
    case Fruits.BANANA:
      print("Banana is yellow");
      break;
    case Fruits.GUAVA:
      print("GUAVA is green");
      break;
  }

}