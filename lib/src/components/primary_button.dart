import 'package:flutter/material.dart';

import '../config/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final void Function(BuildContext) onPressed;
  final double? fontSize;
  final String text;
  final bool isLoading;
  final bool disabled;
  final Size fixedSize;
  final Color backgroundColor;

  const PrimaryButton({
    required this.onPressed,
    required this.text,
    this.isLoading = false,
    this.disabled = false,
    this.fontSize,
    this.fixedSize = const Size.fromHeight(45),
    this.backgroundColor = AppColors.primary,
  });

  void _onPressed(BuildContext context) {
    if (!disabled && !isLoading) {
      onPressed(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (disabled) {
      return Container(
        width: fixedSize.width,
        height: fixedSize.height,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: AppColors.myGray,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      );
    }
    return ElevatedButton(
      onPressed: () => _onPressed(context),
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        fixedSize: fixedSize,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        elevation: 0,
        enableFeedback: true,
        overlayColor: AppColors.primaryLight,
        splashFactory: InkRipple.splashFactory,
      ),
      child: Center(
        child: Visibility(
          visible: !isLoading,
          replacement: const SizedBox(
            height: 20,
            width: 20,
            child: CircularProgressIndicator.adaptive(
              valueColor: AlwaysStoppedAnimation(Colors.white),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
