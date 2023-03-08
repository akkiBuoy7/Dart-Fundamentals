void main(){

  // can use both single and double quotation unlike java
  String single = 'Single';
  String double = "Double";

  // can use escape character or double string to contain single quotation
  String s = "It's easy";
  //String s = 'It\'s easy';

  String s1 = "This is going to be a very long string"
  "So we can use extra line instead of using a + symbol";
  print(s1);

  //String interpolation
  String name = "Akash";
  /*Instead of using + we can use $ just like kotlin to concatenate string values*/
  print("My name is $name");
  // need to use $ for function call in interpolation just like kotlin
  print("the no of characters in name is ${name.length}");

  var l = 10;
  var b = 20;
  // using int in string interpolation
  print("The area of rectangle with length $l and breadth $b is ${l*b}");

  var multi= ''' This is a multiline sentence.
  we are making it a long sentence''';

  print(multi);

  var raw = r' This is a ${raw} sentence';
  print(raw);

}