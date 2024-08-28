import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatelessWidget {
  final void Function(bool) onChanged;
  final String label;
  final bool value;
  final double? labelSize;
  final double? switchSize;

  const CustomSwitch({
    required this.onChanged,
    required this.label,
    required this.value,
    this.labelSize,
    this.switchSize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: labelSize),
        ),
        Transform.scale(
          scale: switchSize ?? 0.6,
          child: Switch(
            activeTrackColor: AppColors.bantubeatPrimary,
            activeColor: AppColors.myWhite,
            value: value,
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}
