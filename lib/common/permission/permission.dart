abstract class PermissionInterface {
  const PermissionInterface();

  Future<void> location();
  Future<void> camera();
  Future<void> storage();
  Future<void> notification();
}
