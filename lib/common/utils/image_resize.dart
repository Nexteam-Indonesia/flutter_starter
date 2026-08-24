import 'dart:io';
import 'dart:isolate';

import 'package:image/image.dart';
import 'package:path_provider/path_provider.dart';

/// Resizes and re-encodes images on a background isolate so large photos never
/// block the UI thread.
class ImageResizeUtils {
  /// Isolate entry point. Receives `[srcPath, name, destDirPath, replyPort]`
  /// over [sendPort] and replies with the compressed file's path.
  Future<void> getCompressedImage(SendPort sendPort) async {
    final receivePort = ReceivePort();

    sendPort.send(receivePort.sendPort);
    final msg = (await receivePort.first) as List<Object?>;

    final srcPath = msg[0]! as String;
    final name = msg[1]! as String;
    final destDirPath = msg[2]! as String;
    final replyPort = msg[3]! as SendPort;

    var image = decodeImage(File(srcPath).readAsBytesSync())!;

    if (image.width > 600 || image.height > 600) {
      image = copyResize(image, width: 600);
    }

    final destFile = File('$destDirPath/$name');
    await destFile.writeAsBytes(encodeJpg(image, quality: 80));

    replyPort.send(destFile.path);
  }

  /// Compresses [f] on a background isolate and returns the resulting file.
  Future<File> compressImage(File f) async {
    final handshakePort = ReceivePort();

    await Isolate.spawn(getCompressedImage, handshakePort.sendPort);
    final sendPort = await handshakePort.first as SendPort;

    final resultPort = ReceivePort();

    sendPort.send(<Object?>[
      f.path,
      f.uri.pathSegments.last,
      (await getTemporaryDirectory()).path,
      resultPort.sendPort,
    ]);

    final compressedPath = await resultPort.first as String;

    return File(compressedPath);
  }
}
