import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class RicheTextSection extends StatelessWidget {
  final String sectionTitle;
  final String sectionContent;
  final String? coloredText;

  const RicheTextSection({
    required this.sectionTitle,
    required this.sectionContent,
    this.coloredText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<TextSpan> contentSpans = [];

    if (coloredText != null && sectionContent.contains(coloredText!)) {
      int redIndex = sectionContent.indexOf(coloredText!);
      contentSpans.addAll([
        TextSpan(text: sectionContent.substring(0, redIndex)),
        TextSpan(
          text: coloredText,
          style: const TextStyle(color: AppColors.primary),
        ),
        TextSpan(
          text: sectionContent.substring(redIndex + coloredText!.length),
        ),
      ]);
    } else {
      contentSpans.add(TextSpan(text: sectionContent));
    }

    return RichText(
      text: TextSpan(
        style: const TextStyle(fontSize: 10, color: Colors.black),
        children: [
          TextSpan(
            text: '$sectionTitle\n',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
          ...contentSpans,
          const TextSpan(text: '\n'),
        ],
      ),
    );
  }
}
