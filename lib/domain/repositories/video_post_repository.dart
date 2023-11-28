import 'package:toktik/domain/entities/video_post.dart';

/// The `VideoPostRepository` class is an abstract class that defines methods for retrieving favorite
/// and trending videos.
abstract class VideoPostRepository {
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId);
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
}
