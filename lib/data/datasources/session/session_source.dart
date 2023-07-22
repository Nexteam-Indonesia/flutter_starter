import 'package:injectable/injectable.dart';

import '../../../common/storage/shared_pref_storage.dart';

@lazySingleton
class SessionSource {
  final SharedPrefStorageInterface storage;
  static const String _key = 'token';

  SessionSource({
    required this.storage,
  });

  Future<String?> get token async {
    return await storage.get(_key);
  }

  Future<void> setToken(String token) async {
    await storage.store(_key, token);
  }

  Future<void> deleteToken() async {
    await storage.remove(_key);
  }

  Future<bool> get hasSession async => await storage.hasData(_key);
}
