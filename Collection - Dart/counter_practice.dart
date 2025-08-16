void main() {
  // First Approch using while loop
  // int remT = 3;
  // Future startingFunc() async {
  //   while (remT > 0) {
  //     await Future.delayed(Duration(seconds: 1));
  //     print(remT);
  //     remT--;
  //   }
  //   print("Application has been started");
  // }
  // startingFunc();

  // Second Approach using recursion
  int remT = 3;
  Future startingFunc() async {
    print(remT);
    await Future.delayed(Duration(seconds: 1));
    remT--;
    if (remT > 0) {
      startingFunc();
    } else {
      print('Application has been started');
    }
  }

  startingFunc();
}
