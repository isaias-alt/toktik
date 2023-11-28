import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/widgets/shared/video_scrollable_view.dart';

/// The `DiscorverScreen` class is a stateless widget that displays a loading indicator or a scrollable
/// view of videos based on the state of the `DiscoverProvider`.
class DiscorverScreen extends StatelessWidget {
  const DiscorverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();
    return Scaffold(
        body: discoverProvider.initialLoading
            ? const Center(
                child: CircularProgressIndicator(
                strokeWidth: 2,
              ))
            : VideoScrollableView(videos: discoverProvider.videos));
  }
}
