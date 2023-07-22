import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

abstract class SharedPrefStorageInterface {
  final Map<String, String> collections;

  const SharedPrefStorageInterface({
    this.collections = const <String, String>{},
  });

  Future<bool> hasData(String key);
  Future<String?> get(String key);
  Future<void> store(String key, String value);
  Future<void> remove(String key);
  Future<void> refresh();
  Future<void> reset();
}

@LazySingleton(as: SharedPrefStorageInterface)
class SharedPreferenceStorage extends SharedPrefStorageInterface {
  late final FlutterSecureStorage storage;

  SharedPreferenceStorage()
      : super(
          collections: <String, String>{},
        ) {
    storage = const FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
      iOptions: IOSOptions(
        accessibility: KeychainAccessibility.first_unlock,
      ),
    );
  }

  @override
  Future<String?> get(String key) async {
    try {
      return storage.read(key: key);
    } catch (e) {
      return collections[key];
    }
  }

  @override
  Future<void> refresh() async {
    try {
      final values = await storage.readAll();
      collections.clear();
      collections.addAll(values);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<void> remove(String key) async {
    try {
      await storage.delete(key: key);
      collections.remove(key);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<void> reset() async {
    try {
      await storage.deleteAll();
      collections.clear();
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<void> store(String key, String value) async {
    try {
      await storage.write(key: key, value: value);
      collections[key] = value;
      await refresh();
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<bool> hasData(String key) async {
    try {
      return storage.containsKey(key: key);
    } catch (e) {
      return collections.containsKey(key);
    }
  }
}
