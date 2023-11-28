import 'package:toktik/domain/entities/video_post.dart';

/// The `VideoPostsDatasource` class is an abstract class that defines methods for retrieving favorite
/// and trending videos.
abstract class VideoPostsDatasource {
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId);
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
}
