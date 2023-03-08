/*
Final and Const variable is immutable this it's value can't be changed

# Final variable is lazy i.e it is initialised only when it is accessed
Whereas Const variable needs to be initialised during compilation only.
 */

/*
Instance variable can not be a const variable i.e inside a class we can't
declare a variable as const.
Here we need to use static const
 */


class SomeClass{


   final stateName = "Karnataka";
   // stateName = "Delhi";  Not possible to reassign values

   //const PI=3.14; // can not declare const variable inside a class
   static const PI = 3.14; // need to use static keyword
}

main(){
   print(SomeClass.PI); // since static so can be accessed by class definition
   print(SomeClass().stateName);
}