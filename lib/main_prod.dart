import 'package:flavor/flavor.dart';

import 'bootstrap.dart';
import 'common/utils/config.dart';

void main() {
  Flavor.create(
    Environment.production,
    properties: {
      Keys.apiUrl: 'https://jsonplaceholder.typicode.com/',
      // Keys.apiKey: 'lksdhjfkjhdsf8sdfjkhsdf896',
      Configs.customKey: 'value',
    },
  );
  bootstrap();
}
