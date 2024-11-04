import 'package:flutter/material.dart';

// TODO We can customize this screen as per our design to show errors on debug and release mode
class AppErrorView extends StatelessWidget {
  const AppErrorView({super.key, required this.details});

  final FlutterErrorDetails details;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Flutter Error Screen ${details.exceptionAsString()}'),
      ),
    );
  }
}
