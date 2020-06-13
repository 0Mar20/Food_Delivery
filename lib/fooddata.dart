class Food {
  final int id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double ratings;

  Food({
   this.id,
   this.name,
   this.imagePath,
   this.category,
   this.price,
   this.discount,
   this.ratings,
});
}

List<Food> foods = [
  Food(
    id: 1,
    name: "Hot Coffee",
    imagePath: "images/breakfast.jpeg",
    category: "1",
    price: 100.0,
    discount: 60.0,
    ratings: 99,
  ),
  Food(
    id: 1,
    name: "Grilled Chicken",
    imagePath: "images/lunch.jpeg",
    category: "1",
    price: 175.0,
    discount: 45.0,
    ratings: 92,
  ),
];