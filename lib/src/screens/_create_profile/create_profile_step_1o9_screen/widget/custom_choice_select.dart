import 'package:flutter/material.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:choice/choice.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';

class CustomChoiceSelect extends StatelessWidget {
  final String title;
  final String value;
  final Function(String?) setSelectedValue;
  final List<String> options;
  final String iconPath;

  const CustomChoiceSelect({
    required this.setSelectedValue,
    required this.options,
    required this.iconPath,
    required this.title,
    this.value = '',
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
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: SizedBox.square(
                  child: Center(
                    child: Image.asset(
                      iconPath, // Access using widget.iconPath
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        border:
                            Border.all(width: 2.0, color: AppColors.primary),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: PromptedChoice<String>.single(
                        title: title,
                        clearable: true,
                        value: value == ''
                            ? LocaleKeys
                                .create_profile_custom_choice_select_empty
                                .tr()
                            : value,
                        onChanged: setSelectedValue,
                        itemCount: options.length,
                        itemBuilder: (state, i) {
                          return ChoiceChip(
                            selected: state.selected(options[i]),
                            onSelected: state.onSelected(options[i]),
                            label: Text(options[i]),
                          );
                        },
                        listBuilder: ChoiceList.createScrollable(
                          direction: Axis.vertical,
                          spacing: 10,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
