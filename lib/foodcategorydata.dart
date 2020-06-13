class Category{

  String categoryName;
  String imagePath;
  int numberOfItems;

  Category({
    this.categoryName,
    this.imagePath,
    this.numberOfItems,
});

}

final categories = [
  Category(
    categoryName: "Burger",
    imagePath: "images/burger.png",
    numberOfItems: 43,
  ),
  Category(
      numberOfItems: 23,
      imagePath: "images/pizza.png",
      categoryName: "Pizza"
  ),

  Category(
      numberOfItems: 23,
      imagePath: "images/coffee-cup.png",
      categoryName: "Coffe Cup"
  ),

  Category(
      numberOfItems: 90,
      imagePath: "images/beer.png",
      categoryName: "Beer"
  ),

  Category(
      numberOfItems: 55,
      imagePath: "images/cheeseburger.png",
      categoryName: "Cheese Burger"
  ),
];