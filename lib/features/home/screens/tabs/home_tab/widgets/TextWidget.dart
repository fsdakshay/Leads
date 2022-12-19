import 'package:flutter/material.dart';


class TextRow extends StatelessWidget {
  TextRow({
    Key? key,
    required this.title,
  }) : super(key: key);

  String title="";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        Text(
          title,
          style: const TextStyle(
              color: Color(0xFF281657), fontWeight: FontWeight.w800, fontSize: 18),
        ),
        const Text(
          "View all",
          style: TextStyle(
              color: Color(0xFF5932DE), fontWeight: FontWeight.w800, fontSize: 14 ),
        ),
      ],
    );
  }
}
