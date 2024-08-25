import 'package:flutter/material.dart';
import 'package:featlink_app/src/resources/app_assets.dart';

class Logo extends StatelessWidget {
  final double size;
  const Logo({super.key, this.size = 128});

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: Center(
        child: Image.asset(
          AppAssets.imageLogo2, // Pass assets using AppAssets
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
