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
  // district state is required but sequence has been changed
  detailsRequiredNamed(district:"Sadar",state: "Tripura",capital: "Agartala");
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
make some parameters as manadatory by using required
*/
void detailsRequiredNamed({required String state,String? capital,required
String district, int? pin}){

  print("state is $state");
  print("capital is $capital");
  print("district is $district");
  print("pin is $pin");
  print("");
}