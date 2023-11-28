import 'package:flutter/material.dart';

import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';

/// The DiscoverProvider class is responsible for managing the state of trending videos and loading the
/// next page of videos.
class DiscoverProvider extends ChangeNotifier {
  final VideoPostRepository videosRepository;
  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videosRepository});

  /// The function `loadNextPage` loads the next page of trending videos and adds them to the existing
  /// list of videos.
  Future<void> loadNextPage() async {
    final newVideos = await videosRepository.getTrendingVideosByPage(1);
    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
