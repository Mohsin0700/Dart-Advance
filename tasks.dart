void main() {
  // Task #1
  final products = [
    {"id": 1, "name": "Wireless Mouse", "price": 2500, "inStock": true},
    {"id": 2, "name": "Mechanical Keyboard", "price": 7800, "inStock": false},
    {"id": 3, "name": "USB-C Hub", "price": 3200, "inStock": true},
  ];
  // Let's create each product summary using map() method
  final summaries = products.map(
    (product) =>
        "${product['name']} -- RS ${product['price']} -- ${product['inStock'] == true ? "In-Stock" : "Out of Stock"}",
  );
  print("Summaries:::::::::::::: $summaries");
  // Task #2
  final coords = [
    {"x": 12.34, "y": 45.67},
    {"x": -9.0, "y": 0.1},
  ];
  // Let's convert maps to strings
  final coordsStrings = coords.map((coord) => '${coord.toString()}');
  print(coordsStrings);
}
