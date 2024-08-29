import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class NotificationCardItem extends StatelessWidget {
  const NotificationCardItem({
    required this.message,
    required this.image,
    super.key,
  });

  final String message;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.mySecondDark),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          ClipOval(
            child: Image.asset(
              image,
              height: 70,
              width: 70,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(child: Text(message)),
        ],
      ),
    );
  }
}
