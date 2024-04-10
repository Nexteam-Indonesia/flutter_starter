import '../../common/base/base_repository.dart';
import '../../common/typedefs/typedefs.dart';
import '../../injection.dart';
import '../datasources/remote_datasources/post_remote/post_remote.dart';
import '../models/post/post_model.dart';

class PostRepository extends BaseRepository {
  PostRepository(super.networkInfo);

  final PostRemote remote = locator.get();

  EitherResponse<List<PostModel>> getPosts({int? startIn, int limit = 10}) {
    return handleNetworkCall(
      call: remote.getPosts(startIn ?? 1, limit),
      onSuccess: (r) => r,
    );
  }
}
