/*

Required => These are mandatory params need to pass to a function.
Optional =>
* Positional=> " [] " Can use default value. Not mandatory
* Named=> " {} " Optional as well can call by Name of the param
* Default=> " {} " Can use default value




# For Named Params  we need to use a default value which can be:
  * String? variable => Making nullable variables with default value as null
  * String variable= "" => Assigning a default value
  * required String variable => using required keyword to make it mandatory

# For Positional Params  we need to use a default value which can be:
  * String? variable => Making nullable variables with default value as null
  * String variable= "" => Assigning a default value
  * we can not use required keyword for positional params
 */

void main(){

  // passing required parameters
  details("Tripura","Agartala","Sadar",799007);

  print("Optional Positional");

  // passing optional positional parameters as empty
  detailsOptionalPositional("Tripura","Agartala");

  print("Optional Named");

  //passing optional Named parameters as empty
  detailsOptionalNamed("Tripura","Agartala");

  // passing optional named parameters with different sequence
  detailsOptionalNamed("Tripura","Agartala",pin:799007,district: "Sadar");

  print("Required Named");

  // pin capital is optional
  // district  is required only
  detailsRequiredNamed(district:"Sadar");
}

// normal function with mandatory parameters
void details(String state,String capital,String district,int pin){

  print("state is $state");
  print("capital is $capital");
  print("district is $district");
  print("pin is $pin");
  print("");
}

//function with Optional positional parameters
void detailsOptionalPositional(String state,String capital,[String? district,
  int? pin]){

  print("state is $state");
  print("capital is $capital");
  print("district is $district");
  print("pin is $pin");
  print("");

}

//function with Optional named parameters
void detailsOptionalNamed(String state,String capital,{ String? district,
   int? pin}){

  print("state is $state");
  print("capital is $capital");
  print("district is $district");
  print("pin is $pin");
  print("");
}

/*
function with explicitly required parameters but in Named sequence
Here even if we used {} for optional named parameters we can still
make some parameters as mandatory by using required
OR
We can assign a default value to the params instead of required keyword
*/
void detailsRequiredNamed({String state="",String? capital,required
String district, int? pin}){

  print("state is $state");
  print("capital is $capital");
  print("district is $district");
  print("pin is $pin");
  print("");
}