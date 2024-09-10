import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class PaymentSessionItem extends StatelessWidget {
  const PaymentSessionItem({
    required this.label,
    this.value1 = '',
    this.value2 = '',
    this.borderColor = Colors.transparent,
    this.labelColor = AppColors.myOtherDark,
    this.value1Color = AppColors.myOtherDark,
    this.value2Color = AppColors.myOtherDark,
    super.key,
  });

  final String label;
  final String value1;
  final String value2;
  final Color borderColor;
  final Color labelColor;
  final Color value1Color;
  final Color value2Color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: labelColor,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value1,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: value1Color,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value2,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: value2Color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
