void main(){

  // first way
  Map<String,int> countryCode = {
    "India" : 91,
    "USA" : 1,
    "Pakistan" : 92
  };

  countryCode.forEach((key, value) {
    print("key is $key and value is $value");
  });
  print("====================");


  // second way using constructor
  Map<String,String> fruits = Map();
  fruits["Apple"] = "Red";
  fruits["Banana"] = "Yellow";
  fruits["Guava"] = "Green";

  for(var keys in fruits.keys){
    print(keys);
  }
  print("====================");

  for(var value in fruits.values){
    print(value);
  }
  print("====================");


  // Updating
  fruits.update("Banana", (value) => "green");

  for(var map in fruits.entries){
    print("${map.value}  ${map.key}");
  }
  print("====================");

}