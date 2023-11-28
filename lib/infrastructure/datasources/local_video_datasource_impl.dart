import 'package:toktik/domain/datasources/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_post.dart';

/// The `LocalVideoDatasource` class implements the `VideoPostsDatasource` interface and provides
/// methods to fetch favorite and trending videos from a local data source.
class LocalVideoDatasource implements VideoPostsDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  /// The function `getTrendingVideosByPage` returns a list of `VideoPost` objects by mapping and
  /// converting `videoPosts` to `LocalVideoModel` and then to `VideoPost`.
  ///
  /// Args:
  ///   page (int): The `page` parameter is an integer that represents the page number of the trending
  /// videos. It is used to fetch a specific page of trending videos.
  ///
  /// Returns:
  ///   The method is returning a Future object that resolves to a List of VideoPost objects.
  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();
    return newVideos;
  }
}
