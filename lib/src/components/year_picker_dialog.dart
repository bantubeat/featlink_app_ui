import 'package:flutter/material.dart';

class YearPickerDialog extends StatelessWidget {
  final DateTime selectedDate;
  final int numberOfYearsBack;
  final ValueChanged<DateTime> onDateChanged;

  const YearPickerDialog({
    required this.selectedDate,
    required this.onDateChanged,
    this.numberOfYearsBack = 100,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        width: 350,
        height: 350,
        child: YearPicker(
          firstDate: DateTime(DateTime.now().year - numberOfYearsBack),
          lastDate: DateTime(DateTime.now().year),
          selectedDate: selectedDate,
          onChanged: (DateTime dateTime) {
            onDateChanged(dateTime);
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
