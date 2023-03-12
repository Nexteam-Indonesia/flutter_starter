import 'package:injectable/injectable.dart';

import '../../common/base/base_repository.dart';
import '../../common/typedefs/typedefs.dart';
import '../contract/quake_contract.dart';
import '../datasources/remote_datasources/quake_remote/quake_remote.dart';
import '../models/quake/quake_model.dart';

@LazySingleton(as: QuakeContract)
class QuakeRepository extends BaseRepository implements QuakeContract {
  QuakeRepository(this.remote, super._networkInfo);

  final QuakeRemote remote;

  @override
  EitherResponse<QuakeModel> getLatestQuake() {
    return handleNetworkCall(
      call: remote.getLatestQuake(),
      onSuccess: (r) => r,
    );
  }
}
