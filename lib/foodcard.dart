import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {

  final String categoryname;
  final String imagepath;
  final int numberofitems;

  FoodCard({
    this.categoryname,
    this.imagepath,
    this.numberofitems,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage(imagepath),
                width: 65.0,
                height: 65.0,
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    categoryname,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "$numberofitems Kinds",
                    style: TextStyle(
                      color: Colors.teal
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
