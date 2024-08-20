import 'package:flutter/material.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'button.dart';

class PrimaryButton extends Button {
  final String text;

  const PrimaryButton({
    required this.text,
    required super.onPressed,
    super.fontSize,
    super.isLoading,
    super.disabled,
    super.fixedSize,
    super.backgroundColor = AppColors.primary,
  });

  @override
  Widget buildContent(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: Colors.white,
      ),
    );
  }
}
