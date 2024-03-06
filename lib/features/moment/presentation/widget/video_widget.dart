import 'dart:io';
import 'package:starter_application/core/common/app_colors.dart';
import 'package:starter_application/core/utils/mini_controller.dart' as ios;
import 'package:video_player_avfoundation/video_player_avfoundation.dart' as video_player_ios;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  final String path;
  final bool autoPlay;
  final bool loop;
  const VideoWidget({
    Key? key,
    required this.path,
    this.autoPlay = false,
    this.loop = false,
  }) : super(key: key);

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  /// Todo create for each video a video controller
  late VideoPlayerController _videoController;
  late ios.MiniController _controller;
  @override
  void initState() {
    super.initState();
    if(Platform.isAndroid)
    _videoControllerAndroidInit();
    if(Platform.isIOS)
      _videoControllerIOSInit();
  }

  @override
  void dispose() {
    if(Platform.isAndroid)
    _videoController.dispose();
    if(Platform.isIOS)
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid ? _buildAndroidVideo() : _buildIOSVideo();
  }

  /// Widget
  Widget _buildAndroidVideo() {
    return (_videoController.value.isInitialized)
        ? InkWell(
            onTap: () {
              if (_videoController.value.isPlaying) {
                _videoController.pause();
              } else {
                _videoController.play();
              }
              setState(() {});
            },
            child: Stack(
              children: [
                VideoPlayer(
                  _videoController,
                ),
                if (!_videoController.value.isPlaying)
                  const Positioned.fill(
                    child: Center(
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
          )
        : Container(
      constraints: BoxConstraints(
          minHeight: 100.h,
          maxHeight: 0.4.sh
      ),
      child: Center(child: CircularProgressIndicator.adaptive()),
    );
  }
  Widget _buildIOSVideo() {
    return (_controller.value.isInitialized)
        ? InkWell(
      onTap: () {
        if (_controller.value.isPlaying) {
          _controller.pause();
        } else {
          _controller.play();
        }
        setState(() {});
      },
      child: Stack(
        children: [
         ios.VideoPlayer(
            _controller,
          ),
          if (!_controller.value.isPlaying)
             Positioned.fill(
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.greyHelp2.withOpacity(0.5),
                  ),
                  child: Icon(
                    Icons.play_arrow,
                    color: AppColors.mansourBackArrowColor2,
                  ),
                ),
              ),
            ),
        ],
      ),
    )
        : Container(
      constraints: BoxConstraints(
          minHeight: 100.h,
          maxHeight: 0.4.sh
      ),
      child: Center(child: CircularProgressIndicator.adaptive()),
    );
  }
  /// Logic

  void _videoControllerAndroidInit() async {
    if (widget.path.contains("http")) {
      _videoController = VideoPlayerController.network(widget.path)
        ..initialize().then((_) {
          // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
          if (widget.autoPlay) _videoController.play();
          if (widget.loop) _videoController.setLooping(true);
          setState(() {});
        });
    } else {
      _videoController = VideoPlayerController.file(File(widget.path))
        ..initialize().then((_) {
          // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
          if (widget.autoPlay) _videoController.play();
          if (widget.loop) _videoController.setLooping(true);
          setState(() {});
        });
    }
  }

  void _videoControllerIOSInit() async {
    if (widget.path.contains("http")) {
      _controller = ios.MiniController.network(widget.path);
      _controller.addListener(() {setState(() {});});
      _controller.initialize().then((_) => setState(() {
        _controller.seekTo(const Duration(milliseconds: 500));
      }));

      if (widget.autoPlay) _controller.play();
    } else {
      _controller = ios.MiniController.file(File(widget.path));
      _controller.addListener(() {setState(() {});});
      _controller.initialize().then((_) => setState(() {
        _controller.seekTo(const Duration(milliseconds: 500));
      }));
      if (widget.autoPlay) _controller.play();
    }
  }
}
