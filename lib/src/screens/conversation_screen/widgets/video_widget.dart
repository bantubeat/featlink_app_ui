import 'dart:io';

import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
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
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 20,
                right: 20,
                bottom: 0,
                child: Image.asset(
                  AppAssets.imagesTmpChatImg,
                  fit: BoxFit.cover,
                ),
              ),
              const Positioned(
                top: 0,
                left: 20,
                right: 20,
                bottom: 0,
                child: Icon(
                  Icons.play_circle_filled_rounded,
                  color: Colors.white,
                  size: 80,
                ),
              ),
              Positioned(
                left: 20,
                right: 20,
                bottom: 0,
                child: Column(
                  children: [
                    // Premier Row avec une barre de progression et les icônes
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceAround, // Espacement entre les éléments
                      children: [
                        const Expanded(
                          child: LinearProgressIndicator(
                            value: 0.7,
                            backgroundColor: Color.fromRGBO(186, 185, 185, 0.5),
                            color: Color.fromRGBO(186, 185, 185, 0.6),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '0:18',
                          style: GoogleFonts.inter(
                            fontSize: 6,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    const Row(
                      children: [
                        Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 30,
                        ),
                        Icon(
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
