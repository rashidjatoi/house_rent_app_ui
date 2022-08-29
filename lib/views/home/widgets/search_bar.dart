import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: 'Search here...',
            hintStyle: const TextStyle(color: Colors.black),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
            prefixIcon: Container(
                padding: const EdgeInsets.all(15),
                child: SvgPicture.asset('assets/icons/search.svg')),
            contentPadding: const EdgeInsets.all(2)),
      ),
    );
  }
}
