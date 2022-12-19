import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 12.0,
      ),
      // physicalmodel because of only shadow
      child: PhysicalModel(
        elevation: 3,
        shadowColor: const Color(0xFFE5E1E6),
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFF9F6F9),
        child: TextField(
          autofocus: false,
          style: const TextStyle(fontSize: 18.0, color: Colors.black),
          cursorHeight: 25,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFF9F6F9),
            contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            hintText: " Search",
            suffixIcon: const Icon(
              Icons.search,
              color: Colors.black87,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
                borderSide: const BorderSide(
                  color: Color(0xFFF9F6F9),
                )),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: const BorderSide(
                color: Color(0xFFF9F6F9),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
