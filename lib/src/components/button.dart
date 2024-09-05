import 'package:flutter/material.dart';
import '../config/app_colors.dart';

class Button extends StatelessWidget {
  final void Function(BuildContext) onPressed;
  final double? fontSize;
  final bool isLoading;
  final bool disabled;
  final Size fixedSize;
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final double elevation;
  final BorderRadius borderRadius;

  const Button({
    required this.onPressed,
    this.isLoading = false,
    this.disabled = false,
    this.fontSize,
    this.fixedSize = const Size.fromHeight(45),
    this.backgroundColor = AppColors.primary,
    this.borderColor = AppColors.primary,
    this.borderWidth = 0,
    this.elevation = 0,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
  });

  void _onPressed(BuildContext context) {
    if (!disabled && !isLoading) {
      onPressed(context);
    }
  }

  @protected
  Widget buildContent(BuildContext context) {
    return const Placeholder();
  }

  @override
  Widget build(BuildContext context) {
    if (disabled) {
      return Container(
        width: fixedSize.width,
        height: fixedSize.height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.myGray,
          borderRadius: borderRadius,
        ),
        child: buildContent(context),
      );
    }
    return ElevatedButton(
      onPressed: () => _onPressed(context),
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        fixedSize: fixedSize,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
          side: borderWidth != 0
              ? BorderSide(width: borderWidth, color: borderColor)
              : BorderSide.none,
        ),
        elevation: elevation,
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
          child: buildContent(context),
        ),
      ),
    );
  }
}
