// class Pair<A, B> {
//   A first;
//   B second;
//   Pair(this.first, this.second);

//   void swap(){
//     var temp = first;
//     first = second as A;
//     second = temp as B;
//   }
// }
class Pair<A extends Comparable, B extends Comparable> {
  A first;
  B second;
  Pair(this.first, this.second);

  void swap() {
    var temp = first;
    first = second as A;
    second = temp as B;
  }

  maxFirst() {
    first.compareTo(second);

    if (second >= first) {
      print("${A}It's the max");
    } else {
      print("${B}It's the max");
    }
  }
}
