import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          prefixIcon: Icon(
            FluentSystemIcons.ic_fluent_search_filled,
            color: Color(0xFFBFC205),
          ),
        ),
      ),
    );
  }
}
