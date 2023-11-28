import 'package:toktik/domain/datasources/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';

/// The `VideoPostsRepositoryImpl` class implements the `VideoPostRepository` interface and retrieves
/// trending videos from a data source.
class VideoPostsRepositoryImpl implements VideoPostRepository {
  final VideoPostsDatasource videosDatasource;

  VideoPostsRepositoryImpl({required this.videosDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  /// The function returns a Future that retrieves a list of VideoPost objects representing trending
  /// videos based on the specified page number.
  ///
  /// Args:
  ///   page (int): The page parameter is an integer that represents the page number of the trending
  /// videos to retrieve.
  ///
  /// Returns:
  ///   The method is returning a Future object that resolves to a List of VideoPost objects.
  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }
}
