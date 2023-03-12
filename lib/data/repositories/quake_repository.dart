import 'package:injectable/injectable.dart';
import 'package:next_starter/common/base/base_repository.dart';
import 'package:next_starter/common/typedefs/typedefs.dart';
import 'package:next_starter/data/contract/quake_contract.dart';
import 'package:next_starter/data/models/quake/quake_model.dart';

import '../datasources/remote_datasources/quake_remote/quake_remote.dart';

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
