import 'dart:io' show File;
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:file_selector/file_selector.dart';
import 'package:path/path.dart' as p;

import '../permission/permission.dart';
import 'storage_path.dart';

abstract class StorageInterface {
  const StorageInterface();

  Future<File> store(
    Uint8List bytes, {
    required String extension,
    String? path,
    String? fileName,
  });
  Future<List<File>> stores(
    List<Uint8List> collections, {
    required String extension,
    String? path,
  });
  Future<File?> pickFile({List<String>? extensions, String? label});
  Future<List<File>> pickFiles({List<String>? extensions, String? label});
  Future<File> download(String url, {bool isTemp = false, String? fileName});
}

class Storage extends StorageInterface {
  final PermissionInterface permission;
  final StoragePathInterface storagePath;

  const Storage({
    required this.permission,
    required this.storagePath,
  }) : super();

  @override
  Future<File> download(String url, {bool isTemp = false, String? fileName}) async {
    // Download file from uri with dio return File
    String fName = fileName ?? p.basenameWithoutExtension(url);
    fName = fName.replaceAll('/', '-');
    final ext = p.extension(url);
    String? path;
    if (isTemp) {
      path = storagePath.temporary;
    } else {
      path = storagePath.external;
    }
    int i = 1;
    String savePath = '$path/$fName$ext';
    while (File(savePath).existsSync()) {
      savePath = '$path/${fName}_($i)$ext';
      i++;
    }
    // logger.w(savePath);
    final Dio dio = Dio();
    await dio.download(url, savePath);
    return File(savePath);
  }

  @override
  Future<File?> pickFile({List<String>? extensions, String? label}) async {
    try {
      final picked = await openFile(
        acceptedTypeGroups: [
          XTypeGroup(
            label: label ?? 'Images',
            extensions: extensions,
          ),
        ],
      );
      return picked == null ? null : File(picked.path);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<List<File>> pickFiles({List<String>? extensions, String? label}) async {
    try {
      final picks = await openFiles(
        acceptedTypeGroups: [
          XTypeGroup(
            label: label ?? 'Images',
            extensions: extensions,
          ),
        ],
      );

      final List<File> files = <File>[];

      for (XFile picked in picks) {
        files.add(File(picked.path));
      }

      return files;
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<File> store(
    Uint8List bytes, {
    required String extension,
    String? path,
    String? fileName,
  }) async {
    try {
      path ??= storagePath.cache;
      fileName ??= DateTime.now().microsecondsSinceEpoch.toString();

      final file = File(p.join(path, '$fileName.$extension'));
      await file.writeAsBytes(bytes);

      return file;
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<List<File>> stores(
    List<Uint8List> collections, {
    required String extension,
    String? path,
  }) async {
    try {
      path ??= storagePath.cache;
      final List<File> files = <File>[];

      for (Uint8List bytes in collections) {
        final fileName = DateTime.now().microsecondsSinceEpoch.toString();

        final file = File(p.join(path, '$fileName.$extension'));
        await file.writeAsBytes(bytes);

        files.add(file);
      }

      return files;
    } catch (error) {
      rethrow;
    }
  }
}
