import '../../../common/storage/shared_pref_storage.dart';

class SessionSource {
  final SharedPrefStorageInterface shared;
  static const String _key = 'token';

  SessionSource({
    required this.shared,
  });

  Future<String?> get token => shared.get(_key);

  Future<void> setToken(String token) async {
    await shared.store(_key, token);
  }

  Future<void> deleteToken() async {
    await shared.remove(_key);
  }

  Future<void> deleteAll() => shared.reset();

  Future<bool> get hasSession => shared.hasData(_key);
}
