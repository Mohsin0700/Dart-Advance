class Box<T> {
  T value;
  Box(this.value);

  void Show() => print("Value: $value");

  T echo<T>(T input) {
    return input;
  }
}

void main() {
  var intBox = Box<int>(10);
  intBox.Show();

  var stringBox = Box<String>("Hello");
  stringBox.Show();

  var result = intBox.echo(20);
  print("result: $result");

  var result2 = stringBox.echo("World");
  print("result2: $result2");

  var listDbl = Box<List<double>>([1.0, 2.0, 3.0, 4.0]);
  listDbl.Show();
}
