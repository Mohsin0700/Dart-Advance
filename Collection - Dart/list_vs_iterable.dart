// run in Dart/Flutter console (not UI, but simulates indexed access)
void main() {
  // source data in state (List) — common in Flutter
  final List<Item> items = List.generate(5, (i) => Item('Item${i + 1}'));

  // simulate framework reading itemCount and indexed access many times
  print('itemCount: ${items.length}');
  print('access index 2: ${items[2]}');
  print('access index 0: ${items[0]}');
  // UI expects cheap length and index access
}

class Item {
  final String name;
  Item(this.name);
  @override
  String toString() => name;
}

// Final conclusion is that we use iterable for filters/queries and searcing purposes, then convert it to the list for UI.
// Iterable is lazy and it saves memory while our ui needs a list.
