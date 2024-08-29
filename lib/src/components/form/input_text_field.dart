import 'package:flutter/material.dart';
import 'package:featlink_app/src/config/app_colors.dart';

class InputTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;

  final Color color;
  final double borderWidth;
  final Color borderColor;
  final Color backgroundColor;
  final Color? focusBorderColor;
  final BorderRadius borderRadius;
  final EdgeInsets padding;
  final double height;
  final int maxLine;
  final int minLine;

  const InputTextField({
    required this.hintText,
    super.key,
    this.obscureText = false,
    this.color = AppColors.primary,
    this.backgroundColor = Colors.white,
    this.borderWidth = 2,
    this.borderColor = AppColors.primary,
    this.borderRadius = const BorderRadius.all(Radius.circular(50.0)),
    this.padding = const EdgeInsets.symmetric(horizontal: 24),
    this.focusBorderColor,
    this.height =  45,
    this.maxLine = 1,
    this.minLine = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      child: Center(
        child: TextFormField(
          textAlign: TextAlign.center,
          maxLines: maxLine,
          minLines: minLine,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: color,
              fontSize: 15,
            ),
            contentPadding: padding,
            focusedBorder: OutlineInputBorder(
              borderRadius: borderRadius,
              borderSide: BorderSide(
                color: focusBorderColor ?? borderColor,
                width: borderWidth,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: borderRadius,
              borderSide: BorderSide(
                color: borderColor,
                width: borderWidth,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
