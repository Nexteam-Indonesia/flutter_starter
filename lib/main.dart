import 'package:flutter/material.dart';

import 'injection.dart';
import 'presentation/pages/app_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const AppPage());
}
