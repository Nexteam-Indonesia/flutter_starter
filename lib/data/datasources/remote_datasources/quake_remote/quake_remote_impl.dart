import 'package:injectable/injectable.dart';

import '../../../../common/base/base_dio_remote_source.dart';
import '../../../../common/utils/api_path.dart';
import '../../../models/quake/quake_model.dart';
import 'quake_remote.dart';

@LazySingleton(as: QuakeRemote)
class QuakeRemoteImpl extends BaseDioRemoteSource implements QuakeRemote {
  QuakeRemoteImpl(super.dio, super.session);

  @override
  Future<QuakeModel> getLatestQuake() {
    return networkRequest(
      request: (dio) => dio.get(ApiPath.latestQuake),
      onResponse: (json) => QuakeModel.fromJson(json['data']),
      isAuth: false,
    );
  }
}
