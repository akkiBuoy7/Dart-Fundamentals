void main(){

  /*
  # By default all values will be null.
  # We can use var directly like kotlin or else we have to explicitely mention
  the data type
  # By default all values will be null just like java
  # In numerical type we have only int and double. Double can be assigned
  both long and exponential values
   */
  var name ="Akash";
  //String name = "Akash";

  var age = 30;
  //int age = 30;

  var percent = 90.8;
  //double percent = 90.8;

  double exponent = 1.32e5;

  var isAlive = true;
  //bool isAlive = true;

  // int and double are subtypes of num
  num varN = 20.20; // double
  num varI = 20; // int

  // This will give null
  var nullCheck;

  print("num type>> $varN");
  print("Name : $name,Age: $age,status:$isAlive");
  print("percent: $percent,exponent:$exponent");
  print("The default value is $nullCheck");


  //parsing
  var a1 = num.parse("1");
  var a2 = num.parse("2.34");
  print("parsing>>> $a1   $a2");
}