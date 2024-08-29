import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class ProgressIntervalSlider extends StatelessWidget {
  final double sliderStartValue;
  final double sliderEndValue;
  final void Function(double, double) onRangeChanged;

  const ProgressIntervalSlider({
    required this.sliderStartValue,
    required this.sliderEndValue,
    required this.onRangeChanged,
  });

  @override
  Widget build(BuildContext context) {
    final double validatedStart = sliderStartValue.clamp(0.0, 1.0);
    final double validatedEnd = sliderEndValue.clamp(0.0, 1.0);

    return RangeSlider(
      values: RangeValues(validatedStart, validatedEnd),
      divisions: 100,
      activeColor: AppColors.primary,
      inactiveColor: AppColors.myGray,
      labels: RangeLabels(
        (validatedStart * 100).toStringAsFixed(0),
        (validatedEnd * 100).toStringAsFixed(0),
      ),
      onChanged: (RangeValues values) {
        onRangeChanged(values.start, values.end);
      },
    );
  }
}
