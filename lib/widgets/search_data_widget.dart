import 'package:flutter/material.dart';

class SearchDataWidget extends StatefulWidget {
  const SearchDataWidget({super.key});

  @override
  State<SearchDataWidget> createState() => _SearchDataWidgetState();
}

class _SearchDataWidgetState extends State<SearchDataWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 233, 231, 231),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const TextField(
            decoration: InputDecoration(
              hintText: "Search",
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
