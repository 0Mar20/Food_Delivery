import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search any food",
            contentPadding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            border: InputBorder.none,
            suffixIcon: Material(
              elevation: 5.0,
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
      ),
    );
  }
}
