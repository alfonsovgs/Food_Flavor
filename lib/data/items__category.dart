class Item {
  int id;
  String name;
  String image;

  Item({this.id, this.name, this.image});
}

List<Item> items = [
  Item(id: 1, name: "French bread", image: "FrenchBread.jpg"),
  Item(id: 2, name: "Tuffle salad", image: "TuffleSalad.jpg"),
  Item(id: 3, name: "Meat", image: "Meat.jpg"),
];
