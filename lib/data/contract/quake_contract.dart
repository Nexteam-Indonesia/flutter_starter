import '../../common/typedefs/typedefs.dart';
import '../models/quake/quake_model.dart';

abstract class QuakeContract {
  EitherResponse<QuakeModel> getLatestQuake();
}
