import 'dart:convert';
import 'dart:typed_data';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:next_starter/common/network/network_info.dart';
import 'package:next_starter/common/storage/shared_pref_storage.dart';

/// In-memory [SharedPrefStorageInterface], standing in for secure storage.
class FakeStorage extends SharedPrefStorageInterface {
  FakeStorage([Map<String, String>? initial]) : super(collections: {...?initial});

  @override
  Future<String?> get(String key) async => collections[key];

  @override
  Future<bool> hasData(String key) async => collections.containsKey(key);

  @override
  Future<void> store(String key, String value) async => collections[key] = value;

  @override
  Future<void> remove(String key) async => collections.remove(key);

  @override
  Future<void> refresh() async {}

  @override
  Future<void> reset() async => collections.clear();
}

class FakeNetworkInfo implements NetworkInfo {
  FakeNetworkInfo({this.online = true});

  bool online;

  @override
  Future<List<ConnectivityResult>> getStatus() async =>
      [online ? ConnectivityResult.wifi : ConnectivityResult.none];
}

/// A [HttpClientAdapter] that answers every request with a canned JSON reply
/// and records what was sent.
class FakeAdapter implements HttpClientAdapter {
  FakeAdapter({this.statusCode = 200, this.body = const <String, Object?>{}});

  int statusCode;
  Object? body;
  final requests = <RequestOptions>[];

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    requests.add(options);
    return ResponseBody.fromString(
      jsonEncode(body),
      statusCode,
      headers: {
        Headers.contentTypeHeader: [Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}
