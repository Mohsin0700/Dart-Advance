void main() {
  print("App has runned");

  List<int> ages = [28, 27, 29, 26, 28, 23, 22, 49, 50];

  // print("For Loop Started");
  // for (int i = 0; i <= ages.length - 1; i++) {
  //   print("${i + 1}: ${ages[i]}");
  //   if (ages[i] == 28) {
  //     print("Mohsin's Age is ${ages[i]}");
  //   } else if (ages[i] == 26) {
  //     print('Arbab\'s Age is ${ages[i]}');
  //   }
  // }
  // print("For Loop Finished");
  // for (var age in ages) {
  //   print(age);
  //   switch (age) {
  //     case 22:
  //       print("Desired age found at index ${ages.indexOf(age)}");
  //       break;
  //   }
  // }

  // Filter Even numbers from the list...
  // List<int> evens = [];
  // for (var n in ages) {
  //   if (n % 2 == 0) {
  //     evens.add(n);
  //   }
  // }
  // print("Even numbers are : $evens");
  // // Filter Odd numbers from the list...
  // List<int> odds = [];
  // for (var n in ages) {
  //   if (n % 2 != 0) {
  //     odds.add(n);
  //   }
  // }
  // print("Odd numbers are : $odds");

  // Filter & remove duplicates

  List nList = [];

  for (var i = 0; i < ages.length; i++) {
    bool found = false;

    for (var j = 0; j < nList.length; j++) {
      if (nList[j] == ages[i]) {
        found = true;
        break;
      }
    }
    if (!found) {
      nList.add(ages[i]);
    }
  }

  print('Original List: $ages');
  print('Duplicat list: $nList');
}
