/*
# finally => It is executed irrespective of exception occurrence
# catch => can handle exception by passing exception as method param
can print the stacktrace too
# on => If we know the type of exception
try => covers the code that might give exception
 */

void main(){

  // This will give exception

  // int result = 10~/0;
  // print("result is $result");


  // case1: When we know what kind of exception might occur, we should use on
  print("\ncase 1");
  try{
    int result = 10~/0;
    print("result is $result");
  } on UnsupportedError{
    print("Can not be divided by zero");
  }

  /* case2: When we don't know what kind of exception might occur, we should
  use catch
  */
  print("\ncase 2");
  try{
    int result = 10~/0;
    print("result is $result");
  } catch (e){
    print("Caught Exception is $e");
  }

  /* case3: When we want to print the exception as well as the stack trace
  */
  print("\ncase 3");
  try{
    int result = 10~/0;
    print("result is $result");
  } catch (e,s){
    print("STACK TRACE");
    print("Caught Exception is $e");
    print("Stack trace is $s");
  }

  /* case4: When we want to print some code whether exception occur or not
  */
  print("\ncase 4");
  try{
    int result = 10~/0;
    print("result is $result");
  } catch (e){
    print("STACK TRACE");
    print("Caught Exception is $e");
  }finally{
    print("Finally this code will be executed");
  }

  /* case5: When we want to throw a custom Exception
  */
  print("\ncase 5");
  try{
    depositAmount(-1000);
  } on CustomException{
    print("Caught Exception is ${CustomException.customErrorMessage()}");
  }


  print("\ncase 6");
  // using on and catch together
  try{
    depositAmount(-1000);
  } on CustomException catch(e){
    //this will give type of exception class instance
    print("Exception object is > $e");
    print("Caught Exception is ${CustomException.customErrorMessage()}");
  }
}

class CustomException{
  static String customErrorMessage() => "Deposit amount can not be less than 0";
}

void depositAmount(int value){
  if(value<0){
    throw CustomException();
  }
}