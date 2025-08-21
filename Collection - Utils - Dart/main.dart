void main() {
  // List.Map() Method
  List<int> nums = [1, 2, 3];
  var nums2 = nums.map((n) => n * 2);
  List nums3 = nums2.toList();
  print(nums2);
  print("Type:::::::::::::: ${nums2.runtimeType}");
  print(nums3);
  print("Type:::::::::::::: ${nums3.runtimeType}");

  // List.Where() Method

  List<int> num4 = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<int> evens = num4.where((n) => n % 2 == 0).toList();
  List<int> odds = num4.where((n) => n % 2 != 0).toList();

  print("Evens:::::::::::::::: $evens");
  print("Odds:::::::::::::::: $odds");

  // List.fold() Method

  List<int> num5 = [7, 8, 9, 5, 4];
  // int sum = num5.fold(0, (previousVal, currentVal) => previousVal + currentVal);
  // We can also put an initial value for counting
  int sum = num5.fold(
    10,
    (previousVal, currentVal) => previousVal + currentVal,
  );
  print("Sum is $sum");

  // List.reduce Method
  int sum2 = num5.reduce((pV, cV) => pV + cV);
  // It works same as fold but it does not take any initial value

  // List.expand Method
  List lA = [
    [1, 3, 4],
    [2, 5, 6],
  ];
  List lB = lA.expand((i) => i).toList();
  print(lB);

  List<String> geetings = ["Hello", "World"];
  List<String> chars = geetings.expand((w) => w.split("")).toList();
  print(chars);
  print(chars.join(""));
}
