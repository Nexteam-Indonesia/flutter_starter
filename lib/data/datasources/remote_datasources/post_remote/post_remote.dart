import '../../../models/post/post_model.dart';

abstract class PostRemote {
  Future<List<PostModel>> getPosts(int startIn, int limit);
}
