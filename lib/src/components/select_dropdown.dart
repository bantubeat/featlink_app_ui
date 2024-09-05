import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class SelectDropdown extends StatelessWidget {
  const SelectDropdown({
    required this.onTap,
    required this.value,
    super.key,
  });

  final void Function()? onTap;
  final String value;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: IntrinsicWidth(
        child: Container(
          padding: const EdgeInsets.only(
            left: 4,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.myGray600,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  value,
                  softWrap: false,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              const Icon(Icons.expand_more),
            ],
          ),
        ),
      ),
    );
  }
}
