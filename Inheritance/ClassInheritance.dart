/*
# Inheritance Concept and syntax is similar to java
# Multi level , Single , Hierarchical Inheritance are possible
# Child class can access methods and properties of parent class
 */

void main(){

  print("Primary Parent class");
  var animal = Animal();
  animal.type = "Animals";
  print(animal.isAlive());
  print("\n");

  print("Secondary Parent class");
  var domestic = DomesticAnimal();
  domestic.type = "Domestic Animals";
  domestic.habitat = "City";
  print(domestic.isAlive());
  print(domestic.getHabitat());
  print("\n");

  print("Secondary Parent class");
  var wild = WildAnimal();
  wild.type = "Wild Animals";
  wild.habitat = "Jungle";
  print(wild.isAlive());
  print(wild.getHabitat());
  print("\n");

  print("Child class");
  var tiger = Tiger();
  tiger.type = "Tiger";
  tiger.habitat = "Jungle";
  print(tiger.isAlive());
  print(tiger.getHabitat());
  print("\n");

  print("Child class");
  var dog = Dog();
  dog.type = "Tiger";
  dog.habitat = "City";
  print(dog.isAlive());
  print(dog.getHabitat());
  print("\n");

}

class Animal{// primary parent class
  bool isLiving=true;
  var type;

  String isAlive() => "The $type are living being : $isLiving";
}

class DomesticAnimal extends Animal{// secondary parent class

  var habitat;
  String getHabitat() => "Domestic animal lives in city";
}

class WildAnimal extends Animal{// secondary parent class

  var habitat;
  String getHabitat() => "Wild animal lives in $habitat";
}

class Dog extends DomesticAnimal{// inheriting secondary parent
  // inheriting primary parent method
  String isAlive() => "The $type are living being : $isLiving";
  // inheriting secondary parent method
  String getHabitat() => "$type lives in $habitat";
}
class Tiger extends WildAnimal{// inheriting secondary parent
  // inheriting primary parent method
  String isAlive() => "The $type are living being : $isLiving";
  // inheriting secondary parent method
  String getHabitat() => "$type lives in $habitat";
}