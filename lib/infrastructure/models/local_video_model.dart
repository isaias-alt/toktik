import 'package:toktik/domain/entities/video_post.dart';

/// The `LocalVideoModel` class is a Dart class that represents a local video with properties such as
/// name, video URL, likes, and views, and it includes methods for converting the object to a JSON
/// object and a `VideoPostEntity` object.
class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel(
      {required this.name,
      required this.videoUrl,
      this.likes = 0,
      this.views = 0});

  /// The above function is a factory constructor in Dart that creates an instance of the LocalVideoModel
  /// class from a JSON object.
  ///
  /// Args:
  ///   json (Map<String, dynamic>): A map containing the JSON data to be converted into a LocalVideoModel
  /// object.
  factory LocalVideoModel.fromJson(Map<String, dynamic> json) =>
      LocalVideoModel(
          name: json['name'],
          videoUrl: json['videoUrl'],
          likes: json['likes'],
          views: json['views']);

  /// The function converts a VideoPost object to a VideoPostEntity object.
  VideoPost toVideoPostEntity() =>
      VideoPost(caption: name, videoUrl: videoUrl, likes: likes, views: views);
}
