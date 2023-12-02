/*
Very similar to JAVA
 */
void main() {
  var state = "Bengaluru";
  // only String and int is allowed in switch argument
  switch (state) {
    case "Bengaluru":
      print("Karnataka");
      break;
    case "Kolkata":
      print("West Bengal");
      break;
    case "Agartala":
      print("Tripura");
      break;
    default:
      print("Invalid input!");
  }
}
