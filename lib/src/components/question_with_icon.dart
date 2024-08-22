import 'package:flutter/material.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/components/primary_button.dart';

class QuestionWithIcon extends StatelessWidget {
  final String title;
  final String iconPath;
  final List<String> options;
  final String selectedOption;
  final Function(String) onOptionSelected;
  final int iconFlex;
  final int optionsFlex;

  const QuestionWithIcon({
    required this.title,
    required this.iconPath,
    required this.options,
    required this.selectedOption,
    required this.onOptionSelected,
    this.iconFlex = 1,
    this.optionsFlex = 1,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: iconFlex,
                child: SizedBox.square(
                  dimension: 180,
                  child: Center(
                    child: Image.asset(
                      iconPath, // Pass assets using widget.iconPath
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                flex: optionsFlex,
                child: Column(
                  children: List.generate(options.length, (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: PrimaryButton(
                        text: options[index],
                        borderWidth: 2,
                        color: selectedOption == options[index]
                            ? Colors.white
                            : Colors.black,
                        backgroundColor: selectedOption == options[index]
                            ? AppColors.primary
                            : Colors.white,
                        onPressed: (context) {
                          onOptionSelected(options[index]);
                        },
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
