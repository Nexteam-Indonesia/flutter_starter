import '../../../models/quake/quake_model.dart';

abstract class QuakeRemote {
  Future<QuakeModel> getLatestQuake();
}
