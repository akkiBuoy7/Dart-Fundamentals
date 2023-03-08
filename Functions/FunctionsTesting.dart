
/*
 # The short syntax => can be used only when the function has a single line.
 Just like single expression function in kotlin
 # Functions are considered a s objects in dart.
 #If return type is not specified function will return null just like python
 better to use void in such cases.
 # => generally is used when we have a single line function
 but it can also be used with multiline.
 # => It does not require return type. It can have implicit return type
 */
void main(){

  findPerimeter(10, 20);
  print("Area is ${findArea(10, 20)}");

  findPerimeterShort(10,30);
  print("Area is by short syntax ${findAreaShort(10, 20)}");
}

// function with no return type
void findPerimeter(int length, int breadth){
 print("The perimeter is  ${2*(length+breadth)}");
}

// function with return type
int findArea(var length , var breadth){
  var area = length * breadth; //even if return type is int , we can return var
 return area;
}


// Short Hand Syntax function with no return type
void findPerimeterShort(int length, int breadth) => print("The perimeter is by short syntax "
    "${2*(length+breadth)}");

// Short Hand Syntax function  with return type
// Here we may or may not mention the return type.
// => is implicit return type syntax
 findAreaShort(var length , var breadth) => {
   length * breadth
 };

int findAreaShortWithReturnTypeMentioned(var length , var breadth)
=> length * breadth;

