import 'dart:async';

void main() {
  final controller = StreamController<int>();
  final stream = controller.stream;

  stream.listen(
    (v) => print(v),
    onDone: () {
      print("Done");
      controller.close();
    },
    onError: (e) {
      print('Error $e');
      controller.close();
    },
  );
  controller.add(10);
  controller.add(20);
  controller.add(30);
  controller.addError(Exception("Aawwww It's an error"));
}
