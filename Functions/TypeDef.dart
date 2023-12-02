/*
# Method overloading is not allowed in dart i.e two methods can't have same name
# In such case typeDef helps to define a method signature(without body)
# All the functions with same method signature as the typeDef can be mapped
to a typeDef object and hence can be called
 */

import 'dart:async';

int multiplication(int a, int b) {
  return a * b;
}

int addition(int a, int b) {
  return a + b;
}

int subtraction(int a, int b) {
  return a - b;
}

typedef Operation(int a, int b);
void main() {
  Operation o = multiplication;
  print(o(5, 6));

  Operation o1 = addition;
  print(o1(5, 6));

  TypCls typCls = TypCls(subtraction, 9, 7);
}

class TypCls {
  Operation? o;
  TypCls(Operation o, int x, int y) {
    this.o = o;

    print(o(x, y));
  }
}
