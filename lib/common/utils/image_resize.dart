import 'dart:io';
import 'dart:isolate';

import 'package:image/image.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

@LazySingleton()
class ImageResizeUtils {
  Future<void> getCompressedImage(SendPort sendPort) async {
    ReceivePort receivePort = ReceivePort();

    sendPort.send(receivePort.sendPort);
    List msg = (await receivePort.first) as List;

    String srcPath = msg[0];
    String name = msg[1];
    String destDirPath = msg[2];
    SendPort replyPort = msg[3];

    Image image = decodeImage(File(srcPath).readAsBytesSync())!;

    if (image.width > 600 || image.height > 600) {
      image = copyResize(image, width: 600);
    }

    File destFile = File('$destDirPath/$name');
    await destFile.writeAsBytes(encodeJpg(image, quality: 80));

    replyPort.send(destFile.path);
  }

  Future<File> compressImage(File f) async {
    ReceivePort receivePort = ReceivePort();

    await Isolate.spawn(getCompressedImage, receivePort.sendPort);
    SendPort sendPort = await receivePort.first;

    ReceivePort receivePort2 = ReceivePort();

    sendPort.send([
      f.path,
      f.uri.pathSegments.last,
      (await getTemporaryDirectory()).path,
      receivePort2.sendPort,
    ]);

    var msg = await receivePort2.first;

    return File(msg);
  }
}
