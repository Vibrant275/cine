// lib/ui/player_screen.dart
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PlayerScreen extends StatefulWidget {
  final String videoPath;
  const PlayerScreen({super.key, required this.videoPath});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.file(File(widget.videoPath))
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _controls() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
          onPressed: () => setState(() {
            _controller.value.isPlaying ? _controller.pause() : _controller.play();
          }),
        ),
        IconButton(
          icon: const Icon(Icons.stop),
          onPressed: () => setState(() {
            _controller.pause();
            _controller.seekTo(Duration.zero);
          }),
        ),
        IconButton(
          icon: const Icon(Icons.fast_forward),
          onPressed: () => _controller.seekTo(
            _controller.value.position + const Duration(seconds: 10),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.fast_rewind),
          onPressed: () => _controller.seekTo(
            _controller.value.position - const Duration(seconds: 10),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Now Playing')),
      body: _controller.value.isInitialized
          ? Column(
        children: [
          AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          ),
          VideoProgressIndicator(_controller, allowScrubbing: true),
          _controls(),
        ],
      )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
