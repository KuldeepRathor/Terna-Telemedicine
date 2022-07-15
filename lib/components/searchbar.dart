import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            filled: true,
            fillColor: Colors.white,
            hintText: 'Search Doctor,Categories,Topics...',
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
