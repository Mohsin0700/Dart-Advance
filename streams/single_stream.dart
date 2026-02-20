void main() async {
  final stream = Stream.fromIterable([1, 2, 3]);

  await for (var i in stream) {
    print('Got: $i');
  }
}
