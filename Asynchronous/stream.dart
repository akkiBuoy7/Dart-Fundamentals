import 'dart:async';

void streamFromFuture() {
  // 1 will print first
  Stream.fromFutures([Future(() => 1), Future(() => Future(() => 2))])
      .listen(print);
}

/*
 Here we are even though cancelling the timer but stream is still being
 listened to leading to memory leaks. So wee need to cancel it creating
 a streamSubscription object.
 */
void streamExec() {
  int value = 0;
  StreamController streamController = StreamController();

  // subscribing
  streamController.stream.listen((event) {
    print(event);
  });

  Timer.periodic(Duration(seconds: 1), (timer) {
    if (value == 5) {
      timer.cancel();
    } else {
      streamController.sink.add(value++);
    }
  });
}

/*
If we want to cancel a stream after sometime then we need to explicitly create
a streamSubscription Object which can be used to cancel the stream.
 */
void streamExecCancel() {
  StreamController streamController = StreamController();
  StreamSubscription streamSubscription = streamController.stream.listen(print);

  var value = 0;
  Timer.periodic(Duration(seconds: 1), (timer) {
    if (value == 5) {
      timer.cancel();
      streamController.close();
      streamSubscription.cancel();
    } else {
      streamController.sink.add(value++);
    }
  });
}

/*
  If we want to do some computation on the stream values then we need to
  await for the stream values to arrive and also need to make the method async
  (since we will be using await).

  Instead of using 'await' , we have to use 'await for' ,  since unlike
  future stream will be emitting multiple values.
 */

Future<void> streamExecResult() async {
  StreamController streamController = StreamController();

  var value = 0;
  Timer.periodic(Duration(seconds: 1), (timer) {
    if (value == 5) {
      timer.cancel();
      streamController.close();
    } else {
      streamController.sink.add(value++);
    }
  });

  var max = -1;

  await for (final value in streamController.stream) {
    max = (value > max) ? value : max;
  }

  print(max);
}

/*
  Custom Stream
  Stream will generate output continuously using the yield method.
  Need to use async* for a method returning stream
 */

Stream<int> streamGenerator() async* {
  for (int i = 0; i < 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}


Stream<int> streamReverseGenerator() async* {
  for (int i = 10; i > 5; i--) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}


/*
 yield* can be used to generate or yield multiple streams from a single method
 */
Stream<int> streamMultiGenerator() async* {
  for (int i = 0; i < 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
  yield* streamReverseGenerator();
}

main() {
  //streamFromFuture();
  //streamExecCancel();
  //streamExec();
  //streamExecResult();
  // streamGenerator().listen((event) {
  //   print(event);
  // });

  streamMultiGenerator().listen((event) {
    print(event);
  });
}
