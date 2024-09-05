import 'package:flutter/material.dart';

class HeadingImageItem extends StatelessWidget {
  const HeadingImageItem({
    required this.imageSource,
    super.key,
  });

  final String imageSource;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          imageSource,
          width: size.width,
          height: size.height,
          fit: BoxFit.cover,
        ),
        Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.transparent,
                Colors.transparent,
                Colors.transparent,
                Colors.transparent,
                Colors.transparent,
                Colors.transparent,
                const Color.fromARGB(255, 36, 36, 36).withOpacity(0.9),
                const Color.fromARGB(255, 36, 36, 36),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
