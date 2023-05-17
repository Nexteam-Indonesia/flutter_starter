import 'package:flutter/material.dart';

class RowLoadingWidget extends StatelessWidget {
  const RowLoadingWidget({Key? key, this.isLeft = false}) : super(key: key);

  final bool isLeft;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isLeft ? MainAxisAlignment.start : MainAxisAlignment.center,
      children: const [
        SizedBox(
          height: 24,
          width: 24,
          child: CircularProgressIndicator(strokeWidth: 1.5),
        ),
        SizedBox(width: 12),
        Text("Loading..."),
      ],
    );
  }
}
