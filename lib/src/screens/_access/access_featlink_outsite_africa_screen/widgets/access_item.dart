import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class AccessItem extends StatelessWidget {
  const AccessItem({
    required this.time,
    required this.amount,
    required this.amoutBzc,
    this.borderColor = AppColors.myGray600,
    this.text1Color = AppColors.myOtherDark,
    this.text2Color = AppColors.myOtherDark,
    this.text3Color = AppColors.myOtherDark,
    super.key,
  });

  final String time;
  final String amount;
  final String amoutBzc;
  final Color borderColor;
  final Color text1Color;
  final Color text2Color;
  final Color text3Color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
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
              time,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: text1Color,
              ),
            ),
          ),
          Expanded(
            child: Text(
              amount,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: text2Color,
              ),
            ),
          ),
          Expanded(
            child: Text(
              amoutBzc,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: text3Color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
