import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

import 'permission.dart';

@LazySingleton(as: PermissionInterface)
class KendaliPermission extends PermissionInterface {
  const KendaliPermission() : super();

  @override
  Future<void> camera() async {
    var status = await Permission.camera.status;
    if (!status.isGranted) {
      status = await Permission.camera.request();
      if (!status.isGranted) {
        status = await Permission.camera.request();
      }
    }
  }

  @override
  Future<void> location() async {
    var status = await Permission.location.status;
    if (!status.isGranted) {
      status = await Permission.location.request();
      if (!status.isGranted) {
        status = await Permission.location.request();
      }
    }
  }

  @override
  Future<void> storage() async {
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      status = await Permission.storage.request();
      if (!status.isGranted) {
        status = await Permission.storage.request();
      }
    }
  }

  @override
  Future<void> notification() async {
    var status = await Permission.notification.status;
    if (!status.isGranted) {
      status = await Permission.notification.request();
      if (!status.isGranted) {
        status = await Permission.notification.request();
      }
    }
  }
}
