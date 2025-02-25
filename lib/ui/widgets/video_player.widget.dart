import 'package:flutter/material.dart';

class VideoPlayerWidget extends StatelessWidget {
  final String url;

  const VideoPlayerWidget({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Text(
          'Video Player Placeholder\nURL: $url',
          style: const TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
