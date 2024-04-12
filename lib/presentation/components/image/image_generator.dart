import 'package:flutter/material.dart';

import '../../../common/extensions/extensions.dart';

class ImageGenerator extends StatelessWidget {
  const ImageGenerator({
    super.key,
    this.size,
    required this.name,
  });

  final double? size;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size ?? 100,
      height: size ?? 100,
      decoration: BoxDecoration(
        color: name.randColor,
        borderRadius: BorderRadius.circular(size ?? 100),
      ),
      child: Center(
        child: Text(
          name.substring(0, 1).toUpperCase(),
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
