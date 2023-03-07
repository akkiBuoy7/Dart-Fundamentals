/*
#By default constructor in a subclass calls parent class no-args constructor
#If no-args constructor is absent in parent class then we have to manually call
any of the parent class constructor in the child class
#Parent class constructor is always called before child class constructor
 */

void main(){


  var car  = Car("Diesel", true);
  print("");
  var bike = Bike("Petrol");
}

class Machine{} // has no-args constructor by default

class Vehicle extends Machine{
  bool hasEngine = false;

  // Vehicle(){
  //
  // }

  /*
  Since parent has no-args constructor so we don't need to manually call
  super() or parent class constructor
   */
  Vehicle(this.hasEngine){
   print("All Vehicles have engine : $hasEngine");
  }

  Vehicle.namedConstructor(){
    print("All Vehicles have engine : $hasEngine");
  }

}

class Car extends Vehicle{

  var type;
  bool hasEngine;
  /*
  Since Parent don't have no-args constructor so we need to manually call
  super() or parent class constructor
   */
  Car(this.type,this.hasEngine):super(hasEngine){
    print("Calling Parameterized Constructor");
    print("Car Engine is $type");
  }
}

class Bike extends Vehicle{

  var type;
  /*
  Since Parent don't have no-args constructor so we need to manually call
  super() or parent class constructor.
  Here we called the named constructor
   */
  Bike(this.type):super.namedConstructor(){

    print("Calling Named Constructor");
    print("Bike Engine is $type");
  }
}


