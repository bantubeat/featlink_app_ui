import 'package:flutter/material.dart';
import '../config/app_colors.dart';

class GradiantButton extends StatelessWidget {
  final void Function() onPressed;
  final double? fontSize;
  final bool isLoading;
  final bool disabled;
  final Size fixedSize;
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final String label;
  final BorderRadius borderRadius;

  const GradiantButton({
    required this.label,
    required this.onPressed,
    this.isLoading = false,
    this.disabled = false,
    this.fontSize,
    this.fixedSize = const Size.fromHeight(45),
    this.backgroundColor = AppColors.primary,
    this.borderColor = AppColors.primary,
    this.borderWidth = 0,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
  });

  void _onPressed(BuildContext context) {
    if (!disabled && !isLoading) {
      onPressed();
    }
  }

  @protected
  Widget buildContent(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(fontWeight: FontWeight.bold),
    );
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
    return GestureDetector(
      onTap: () => _onPressed(context),
      child: Container(
        width: fixedSize.width,
        height: fixedSize.height,
        decoration: BoxDecoration(
          color: backgroundColor,
          gradient: const LinearGradient(
            colors: [AppColors.myPrimarySoft, AppColors.myWhite],
          ),
          borderRadius: borderRadius,
          border: borderWidth != 0
              ? Border.all(width: borderWidth, color: borderColor)
              : null,
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
      ),
    );
  }
}
