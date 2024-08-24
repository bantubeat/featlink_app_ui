import 'package:flutter/material.dart';
import 'dart:math' show min;
import 'package:featlink_app/src/resources/app_assets.dart';

class Logo extends StatelessWidget {
  final double height;
  final double width;

  const Logo({super.key, this.height = 128, this.width = 128});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: min(128, 128),
      child: Center(
        child: Image.asset(
          AppAssets.imageLogo, // Pass assets using AppAssets
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
