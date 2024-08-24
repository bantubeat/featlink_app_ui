import 'package:flutter/material.dart';

class InputCheckboxField extends StatelessWidget {
  final String label;
  final bool isChecked;
  final Function(bool?) onChanged;
  final IconData icon;

  const InputCheckboxField({
    required this.label,
    required this.isChecked,
    required this.onChanged,
    super.key,
    this.icon = Icons.check_box_outline_blank, // Default icon
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: onChanged,
        ),
        const SizedBox(width: 8),
        Text(label),
      ],
    );
  }
}
