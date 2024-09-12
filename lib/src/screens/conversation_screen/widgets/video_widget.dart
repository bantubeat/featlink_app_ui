import 'dart:io';
import 'package:video_player/video_player.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class VideoWidget extends StatefulWidget {
  const VideoWidget({
    required this.file,
    required this.onClose,
    super.key,
  });
  final File file;
  final Function() onClose;

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
      ),
    )..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: widget.onClose,
              child: const Icon(
                Icons.close,
                color: AppColors.myWhite,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 20,
                right: 20,
                bottom: 0,
                child: Center(
                  child: _controller.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        )
                      : Container(),
                ),
              ),
              Positioned(
                top: 0,
                left: 20,
                right: 20,
                bottom: 0,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _controller.value.isPlaying
                          ? _controller.pause()
                          : _controller.play();
                    });
                  },
                  child: const Icon(
                    Icons.play_circle_filled_rounded,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
              ),
              Positioned(
                left: 20,
                right: 20,
                bottom: 0,
                child: Column(
                  children: [
                    // Premier Row avec une barre de progression et les icônes
                    VideoProgressIndicator(
                      _controller,
                      allowScrubbing: true,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment
                    //       .spaceAround, // Espacement entre les éléments
                    //   children: [
                    //     VideoProgressIndicator(
                    //       _controller,
                    //       allowScrubbing: true,
                    //     ),
                    //     // const Expanded(
                    //     //   child: LinearProgressIndicator(
                    //     //     value: 0.7,
                    //     //     backgroundColor: Color.fromRGBO(186, 185, 185, 0.5),
                    //     //     color: Color.fromRGBO(186, 185, 185, 0.6),
                    //     //   ),
                    //     // ),
                    //     const SizedBox(
                    //       width: 10,
                    //     ),
                    //     Text(
                    //       '0:18',
                    //       style: GoogleFonts.inter(
                    //         fontSize: 6,
                    //         fontWeight: FontWeight.w500,
                    //         color: Colors.white,
                    //       ),
                    //     ),
                    //   ],
                    // ),

                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _controller.value.isPlaying
                                  ? _controller.pause()
                                  : _controller.play();
                            });
                          },
                          child: const Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        const Icon(
                          Icons.volume_down_sharp,
                          color: Colors.white,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
