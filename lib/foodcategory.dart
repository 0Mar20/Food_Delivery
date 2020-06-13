import 'package:flutter/material.dart';
import 'foodcategorydata.dart';
import 'foodcard.dart';

class FoodCategory extends StatelessWidget {

  final List <Category> _categories = categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index){
          return FoodCard(
            categoryname: _categories[index].categoryName,
            imagepath: _categories[index].imagePath,
            numberofitems: _categories[index].numberOfItems,
          );
        },
      ),
    );
  }
}
