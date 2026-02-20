import 'dart:async';

void main() {
  final controller = StreamController<dynamic>.broadcast();
  final stream = controller.stream.asBroadcastStream();

  stream.listen((v) => print("First Listener got: $v"));
  stream.listen((v) => print("Second Listener got: $v"));

  controller.add(786);
  controller.add('Hello This is radio Pakistan');
}
