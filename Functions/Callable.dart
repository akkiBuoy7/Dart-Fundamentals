/*
Callable classes are those classes whose instance can be used to make a call
to the class just like a function call.
 */

class Class1{
  call(){
    print("This is a call method without return type");
  }

}

class Class2{
  call(String msg){
    print("This is a call method with $msg type");
  }
}

class Class3{
  String call(String msg,String msg1){
    return "This is a call method with $msg and $msg1 type";
  }
}

void main(){

  var a = Class1();
  a();

  var b = Class2();
  b("parameter");

  var c = Class3();
  print(c("parameter","return"));
}