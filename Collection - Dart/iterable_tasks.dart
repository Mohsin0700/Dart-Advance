void main() {
  print("Iterable tasks will be performed here!");
  // Problem #1
  // Create anIterable of user maps of shape id,name,isActive
  // return List<String> of names of active users
  // Solution
  Iterable<Map<String, dynamic>> users = [
    {"id": 1, "name": "Mohsin", "isActive": true},
    {"id": 2, "name": "Arbab", "isActive": false},
    {"id": 3, "name": "Kamran", "isActive": true},
    {"id": 4, "name": "Munawwar", "isActive": false},
    {"id": 5, "name": "Bilal", "isActive": true},
  ];

  // List<String> activeUserNames = [];

  // for (var user in users) {
  //   if (user["isActive"] == true) {
  //     activeUserNames.add(user["name"]);
  //   }
  // }

  // print("List of active users::::::::::::::$activeUserNames");
  // Solution #1 of Problem #1 in 6 lines of code

  final activeUserNames = users
      .where((user) => user["isActive"] == true)
      .map((user) => user["name"] as String)
      .toList();
  print("Active user names are :::::::::::::: $activeUserNames");
  // Solution #2 of Problem #1 in 4 lines of code
}
