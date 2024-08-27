import 'package:flutter/material.dart';

class CustomRadio extends StatelessWidget {
  final String labes;
  final dynamic value;
  final dynamic groupe;
  final void Function(dynamic) onChanged;

  const CustomRadio({
    required this.labes,
    required this.groupe,
    required this.value,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: value,
          groupValue: groupe,
          onChanged: onChanged,
        ),
        Text(labes),
      ],
    );
  }
}
