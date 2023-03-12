import 'package:flutter/material.dart';
import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/pages/app_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const AppPage());
}
