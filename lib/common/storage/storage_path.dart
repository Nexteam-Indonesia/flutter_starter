import 'dart:io' show Platform;

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../utils/config.dart';

abstract class StoragePathInterface {
  final String temporary;
  final String cache;
  final String document;
  final String external;
  final String externalCache;

  const StoragePathInterface({
    required this.temporary,
    required this.cache,
    required this.document,
    required this.external,
    required this.externalCache,
  });

  StoragePathInterface copyWith({
    String? temporary,
    String? cache,
    String? document,
    String? external,
    String? externalCache,
  });

  Future<StoragePathInterface> initialize();

  String fromTemporary([String? path]);
  String fromCache([String? path]);
  String fromDocument([String? path]);
  String fromExternal([String? path]);
  String fromExternalCache([String? path]);
}

class StoragePath extends StoragePathInterface {
  StoragePath({
    super.temporary = '',
    super.cache = '',
    super.document = '',
    super.external = '',
    super.externalCache = '',
  });

  @override
  StoragePathInterface copyWith({
    String? temporary,
    String? cache,
    String? document,
    String? external,
    String? externalCache,
  }) =>
      StoragePath(
        temporary: temporary ?? this.temporary,
        cache: cache ?? this.cache,
        document: document ?? this.document,
        external: external ?? this.external,
        externalCache: externalCache ?? this.externalCache,
      );

  @override
  String fromTemporary([String? path]) => p.join(temporary, path);

  @override
  String fromCache([String? path]) => p.join(cache, path);

  @override
  String fromDocument([String? path]) => p.join(document, path);

  @override
  String fromExternal([String? path]) => p.join(external, path);

  @override
  String fromExternalCache([String? path]) => p.join(externalCache, path);

  @override
  Future<StoragePathInterface> initialize() async {
    String temporary = this.temporary;
    String cache = this.cache;
    String document = this.document;
    String external = this.external;
    String externalCache = this.externalCache;

    temporary = (await getTemporaryDirectory()).path;
    cache = (await getApplicationSupportDirectory()).path;
    document = (await getApplicationDocumentsDirectory()).path;

    if (Platform.isAndroid) {
      external = (await getExternalStorageDirectory())?.path ?? document;
      external = p.join(external, Configs.titleApp.trim().split(' ')[0]);
    } else if (Platform.isIOS) {
      external = p.join(document, Configs.titleApp.trim().split(' ')[0]);
    }

    externalCache = p.join(external, '.caches');

    return copyWith(
      temporary: temporary,
      cache: cache,
      document: document,
      external: external,
      externalCache: externalCache,
    );
  }

  @override
  String toString() {
    return 'StoragePathInterface{temporary: $temporary, cache: $cache, '
        'document: $document, extenal: $external, externalCache: $externalCache,}';
  }
}
