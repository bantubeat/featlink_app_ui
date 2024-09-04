import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

import 'on_and_offline_dot.dart';

class MessageItem extends StatelessWidget {
  const MessageItem({
    required this.isOnline,
    required this.senderName,
    required this.senderImage,
    required this.message,
    this.isSelected = false,
    this.subSenderImage,
    super.key,
  });

  final bool isOnline;
  final bool isSelected;
  final String senderName;
  final String senderImage;
  final String? subSenderImage;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        border: Border(
          top: const BorderSide(color: AppColors.myGray),
          left: isSelected
              ? const BorderSide(color: AppColors.primary, width: 10)
              : BorderSide.none,
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 30),
          Stack(
            children: [
              ClipOval(
                child: Image.asset(
                  senderImage,
                  fit: BoxFit.cover,
                  height: 60,
                  width: 60,
                ),
              ),
              isOnline ? const OnlineDot() : const OfflineDot(),
            ],
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  senderName,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    if (subSenderImage != null)
                      ClipOval(
                        child: Image.asset(
                          subSenderImage!,
                          fit: BoxFit.cover,
                          height: 15,
                          width: 15,
                        ),
                      ),
                    if (subSenderImage != null) const SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        message,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 30),
        ],
      ),
    );
  }
}
