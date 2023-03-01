import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/pages/app_page.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await configureDependencies();
  runApp(const AppPage());
}
