void main() {
  final numbers = List.generate(6, (index) {
    print('The number ${index + 1} is generated');
    return index + 1;
  });

  for (final num in numbers.take(2)) {
    print("The number $num is used");
  }

  final numbers2 = Iterable.generate(6, (index) {
    print("The number ${index + 1} is generated from iterator");
    return index + 1;
  });

  for (var num2 in numbers2.take(2)) {
    print("The number $num2 is used");
  }
}
