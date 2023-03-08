import 'dart:collection';
/*
Like java Queue is both LIFO and FIFO
 */
void main(){
  Queue<int> myQueue = Queue();

  myQueue.add(100);
  myQueue.add(200);
  myQueue.add(300);
  myQueue.add(400);
  myQueue.add(500);

  myQueue.removeFirst();

  myQueue.forEach((element) {
    print(element);
  });

  print("\n");
  myQueue.removeLast();
  myQueue.forEach((element) {print(element);
  });
}