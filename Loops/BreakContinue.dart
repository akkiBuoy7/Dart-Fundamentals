void main(){

  // Normal Break Statement
  // for(var i=0;i<10;i++){
  //   if(i==5){
  //     break;
  //   }
  //   print(i);
  // }

  // for(var i=0;i<5;i++){
  //   for(var j=0;j<5;j++){
  //     if(i==2 && j==2){ // here after 21, 2 2 2 3 and below will skipped
  //                                //but 31 32 will be present
  //       break;
  //     }
  //     print("i: $i j:$j");
  //   }
  // }

//Using Label Like Kotlin
//   myOuter:for(var i=0;i<5;i++){ // labelling the outer loop
//     for(var j=0;j<5;j++){
//       if(i==2 && j==2){ // here after 2 1 everything  will be skipped
//         // breaking the outer loop
//         break myOuter;
//       }
//       print("i: $i j:$j");
//     }
//   }

  // for(var i=0;i<5;i++){
  //   for(var j=0;j<5;j++){
  //     if(i==2 && j==2){ // here after 2 1, 2 3 2 4 ... will be printed
  //       continue;
  //     }
  //     print("i: $i j:$j");
  //   }
  // }

myOuter:for(var i=0;i<5;i++){
    for(var j=0;j<5;j++){
      if(i==2 && j==2){ // here after 2 1, 3 0 3 1 3 2... will be printed
        continue myOuter;
      }
      print("i: $i j:$j");
    }
  }
}