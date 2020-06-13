import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'hometopinfo.dart';
import 'foodcategory.dart';
import 'searchfield.dart';
import 'foodbought.dart';
import 'fooddata.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Food> _foods = foods;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
          SizedBox(
            height: 20.0,
          ),
          SearchField(),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Frequently Bought Food",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Text(
                    "View All",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.orange
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                children: _foods.map(_buildFoodItem).toList(),
              )
          )
        ],
      ),
    );
  }

  Widget _buildFoodItem (Food food) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: FoodBought(
        id: food.id,
        category: food.category,
        discount: food.discount,
        imagePath: food.imagePath,
        name: food.name,
        price: food.price,
        ratings: food.ratings,
      ),
    );
  }
}
