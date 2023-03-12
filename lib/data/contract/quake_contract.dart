import 'package:next_starter/data/models/quake/quake_model.dart';

import '../../common/typedefs/typedefs.dart';

abstract class QuakeContract {
  EitherResponse<QuakeModel> getLatestQuake();
}
