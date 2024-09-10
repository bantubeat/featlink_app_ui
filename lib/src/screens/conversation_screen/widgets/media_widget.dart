import 'dart:io';

import 'package:flutter/material.dart';

import 'image_widget.dart';
import 'video_widget.dart';

class MediaWidget extends StatelessWidget {
  const MediaWidget({
    required this.file,
    required this.onClose,
    super.key,
  });
  final File file;
  final Function() onClose;
  @override
  Widget build(BuildContext context) {
    if (!file.path.endsWith('.mp4')) {
      return ImageWidget(
        file: file,
        onClose: onClose,
      );
    } else {
      return VideoWidget(
        file: file,
        onClose: onClose,
      );
    }
  }
}
