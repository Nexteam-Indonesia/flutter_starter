import 'dart:math';

import 'package:flutter/material.dart';

class ImageGenerator extends StatelessWidget {
  const ImageGenerator({
    super.key,
    this.size,
    required this.name,
  });

  final double? size;
  final String name;

  Color getRandomColor(String input) {
    final random = Random(input.hashCode);
    final red = random.nextInt(255);
    final green = random.nextInt(255);
    final blue = random.nextInt(255);
    return Color.fromRGBO(red, green, blue, 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size ?? 100,
      height: size ?? 100,
      decoration: BoxDecoration(
        // random color based on name
        color: getRandomColor(name),
        borderRadius: BorderRadius.circular(size ?? 100),
      ),
      child: Center(
        child: Text(
          name.trim().substring(0, 1).toUpperCase(),
          style: TextStyle(
            fontSize: (size ?? 100) / 2,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
