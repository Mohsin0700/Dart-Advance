void main() {
  // Uses of spread operators
  // List listOne = ["Mohsin", "Arbab", "Ali"];
  // List listTwo = ["Munawwar", "Kamran", "Hamza"];
  // List listThree = [...listOne, ...listTwo];
  // print("List 1 ::::::::::::::: $listOne");
  // print("List 2 ::::::::::::::: $listTwo");
  // print("List 3 ::::::::::::::: $listThree");

  // List listFour = listThree.sublist(1, 4);
  // print(listFour);

  // bool enable = true;
  // bool enable = false;
  // var list = [
  //   1,
  //   if (enable) 2,
  //   for (var i in [3, 4]) i,
  // ];

  // print(list);

  // var listA = [1, 2, 3];
  // var listB = [2, 3, 4];

  // // var listC = [...listA, ...listB]; X
  // // print(listC);
  // // For deduplicate and merge a list
  // var listC = [...listA, ...listB].toSet().toList();
  // print(listC);

  // Merge list of maps (Complex)
  var a = [
    {"id": 1, "name": "A"},
    {"id": 2, "name": "B"},
  ];

  var b = [
    {"id": 2, "name": "B2"},
    {"id": 3, "name": "C"},
  ];

  var merged = [...a, ...b];
  print("Before");
  print("Merged items:::::::::::::::::: $merged");
  final seen = <int>[];
  final deduplicateItems = [];

  for (var item in merged) {
    final id = item["id"] as int;
    if (!seen.contains(id)) {
      seen.add(id);
      deduplicateItems.add(item);
    }
  }
  print('After');
  print("Duplicate IDs item removed :::::::::::::::::: $deduplicateItems");
}
