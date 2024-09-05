import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String image;
  final int index;
  final void Function(int) onCloseImage;
  const ImageCard({
    required this.onCloseImage,
    required this.image,
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width * 0.8,
      height: 350,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.4,
          color: AppColors.myGray,
        ),
        color: AppColors.myWhite,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 0,
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            right: 10,
            top: 10,
            child: GestureDetector(
              onTap: () => onCloseImage(index),
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Icon(Icons.close),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
