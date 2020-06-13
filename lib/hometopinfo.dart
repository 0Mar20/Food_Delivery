import 'package:flutter/material.dart';

class HomeTopInfo extends StatelessWidget {

  final textStyle = TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "What would",
                style: textStyle,
              ),
              Text(
                "you like to eat ?",
                style: textStyle,
              ),
            ],
          ),
          IconButton(
            onPressed: (){
              //
            },
            icon: Icon(
              Icons.notifications_none,
              size: 25.0,
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
