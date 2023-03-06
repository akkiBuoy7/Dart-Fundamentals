
/*
Same like JAVA
 */
void main(){

  var salary = 900000;

  if(salary>=750000){
    print("Taxable under new regime");
  }else if(salary>500000 && salary<750000){
    print("Not taxable under new regime");
  }else{
    print("Not Taxable");
  }
}