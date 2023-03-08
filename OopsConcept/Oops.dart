/*
# Everything is similar to Java. Constructor syntax can be optimised
# Within a class we can't have both default and parameterized constructor
# Within a class we can have multiple Named Constructors but with different
Names
# Overloading of constructor with same name and different params is not allowed.
  So if we want multiple constructors we should have different Names
# Since Overloading not allowed so we can't use Multiple parameterized default
 constructors. So we need Named Constructors if we want multiple constructors.
# Concepts of Named and Positional params in constructor is applicable
since constructor is also a method.
 */


void main(){


  //SomeClass s = SomeClass(); //kotlin way of object initialization

  SomeClass s1 = SomeClass("Parameterized", 2);
  s1.parameterized();

  var s2 = SomeClass.customNamedConstructor();

  var s3 = SomeClass.customParameterizedConstructor("Parameterized Named", 4);
  s3.customParameterized();


  var s4 = SomeClass.customParameterizedConstructorWithNamedParams
    (someVariable: "some var",caseNum: 5);

  var s5 = SomeClass.customParameterizedConstructorWithPositionParams("ConstructorWithPositionParams");


}
class SomeClass{

  var type="default";
  var caseNum=1;
  String? someVariable = "";

  // SomeClass(){ // Default constructor
  //   print("$caseNum : This is a $type constructor");
  // }

  SomeClass(this.type,this.caseNum); // Parameterized constructor
  void parameterized() => print("$caseNum : This is a $type constructor");
  // // JAVA way of defining constructor is allowed
  // SomeClass(String type,int caseNum){
  //   this.type = type;
  //   this.caseNum = caseNum;
  // }



  // Multiple Parameterized constructor not allowed,overloading is not allowed
  // SomeClass(int _caseNum,String _type,String g){
  // }

  SomeClass.customNamedConstructor(){ // Default Named Constructor
    print("3 : This is a Default Named Constructor");
  }



  SomeClass.customParameterizedConstructor(this.type,this.caseNum);
  void customParameterized() => print("$caseNum : This is a $type constructor");

  // In Dart Overloading of constructor with same name is not allowed.
  // So if we want multiple constructors we should have different Names
  SomeClass.customParameterizedConstructor1(this.type,this.caseNum,this.someVariable);

  // Concepts of Named Parameters are applicable in constructors also
  SomeClass.customParameterizedConstructorWithNamedParams({this.type="ConstructorWithNamedParams",
    required this.caseNum,this.someVariable}){

    print("$caseNum : This is a $type constructor having a $someVariable");
  }

  // Concepts of Positional Parameters are applicable in constructors also
  SomeClass.customParameterizedConstructorWithPositionParams(this.type,[this
      .caseNum=6,this.someVariable] ){
    // someVariable will be null here
    print("$caseNum : This is a $type constructor having a $someVariable");
  }


}