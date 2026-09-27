import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';

import 'bootstrap.dart';
import 'common/utils/config.dart';

void main() {
  Flavor.create(
    Environment.dev,
    color: Colors.green,
    name: 'PREVIEW',
    properties: {
      Keys.apiUrl: 'https://jsonplaceholder.typicode.com/',
      // Keys.apiKey: 'jksdhfkjhs83rjkh324kj23h4',
      Configs.customKey: 'value',
    },
  );
  bootstrap();
}
