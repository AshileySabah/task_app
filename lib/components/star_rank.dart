import 'package:flutter/material.dart';

class StarRank extends StatelessWidget {
  final int difficulty;

  const StarRank({super.key, this.difficulty = 0});

  @override
  Widget build(BuildContext context) {
    List<Widget> stars = List.generate(5, (index) {
      return Icon(
        Icons.star,
        size: 16,
        color: difficulty >= index ? Colors.blue : Colors.grey,
      );
    });

    return Row(
      children: stars,
    );
  }
}
