import 'dart:io';

import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    required this.file,
    required this.onClose,
    super.key,
  });
  final File file;
  final Function() onClose;
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
              onTap: onClose,
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
          child: Image.asset(
            AppAssets.imagesTmpChatImg,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
