// Creating a local stream

Stream<int> counter() async* {
  for (int i = 1; i <= 3; i++) {
    await Future.delayed(Duration(milliseconds: 300));
    yield i;
  }
}

void main() {
  // Stream subscription
  Stream<int> counterStream = counter();
  counterStream.listen(
    (valueGettingFromStream) => print(valueGettingFromStream),
  );
}
