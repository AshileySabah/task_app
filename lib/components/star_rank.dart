import 'package:flutter/material.dart';

class StarRank extends StatelessWidget {
  final int difficulty;

  const StarRank({super.key, this.difficulty = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 16,
          color: difficulty >= 1 ? Colors.blue : Colors.grey,
        ),
        Icon(
          Icons.star,
          size: 16,
          color: difficulty >= 2 ? Colors.blue : Colors.grey,
        ),
        Icon(
          Icons.star,
          size: 16,
          color: difficulty >= 3 ? Colors.blue : Colors.grey,
        ),
        Icon(
          Icons.star,
          size: 16,
          color: difficulty >= 4 ? Colors.blue : Colors.grey,
        ),
        Icon(
          Icons.star,
          size: 16,
          color: difficulty >= 5 ? Colors.blue : Colors.grey,
        ),
      ],
    );
  }
}
