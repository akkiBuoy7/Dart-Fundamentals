/*
Similar to kotlin , syntax is different
# this => refers to current object instance whose extension is created
 */

class Animal{
  var type = "Tiger";
  void eat(){
    print("All animals eat");
  }
}

extension on Animal{
  void sleep(){
    print("All animals sleep");
  }
  void details(){
    print(this.type); // using this can access the current class members
  }
}

extension on int{
  int findSquare(){
    return this*this;
  }

  bool isGreater(int n){
    if(n>this){
      return false;
    }
    return true;
  }
}

void main(){

  var a = Animal();
  a.eat();
  a.sleep(); // extension function call
  a.details();

  var v = 6;
  print(v.findSquare());
  print(5.isGreater(6));

}