import 'package:flutter/material.dart';

class FoodBought extends StatefulWidget {

  final int id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double ratings;

  FoodBought({
    this.id,
    this.name,
    this.imagePath,
    this.category,
    this.price,
    this.discount,
    this.ratings,
  });

  @override
  _FoodBoughtState createState() => _FoodBoughtState();
}

class _FoodBoughtState extends State<FoodBought> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 200.0,
            width: 340.0,
            child: Image.asset(
              widget.imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            height: 60.0,
            width: 340.0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.black12
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            right: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.blueAccent,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.blueAccent,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.blueAccent,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.blueAccent,
                          size: 16.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.blueAccent,
                          size: 16.0,
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          "("+ widget.ratings.toString() + " Reviews)",
                          style: TextStyle(
                            color: Colors.teal,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      widget.price.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.orangeAccent
                      ),
                    ),
                    Text(
                      "Min Order",
                      style: TextStyle(
                          color: Colors.teal
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
