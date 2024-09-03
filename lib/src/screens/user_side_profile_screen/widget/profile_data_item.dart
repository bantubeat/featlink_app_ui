
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileDataItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final bool showOnProfile;
  final Function(bool) onSwitchChanged;

  const ProfileDataItem({
    required this.icon,
    required this.label,
    required this.value,
    required this.showOnProfile,
    required this.onSwitchChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      decoration: BoxDecoration(
        color: AppColors.myWhite,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 2),
            blurRadius: 3,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: const EdgeInsets.only(top: 13),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 2,
                child: Row(
                  children: [
                    Icon(
                      icon,
                      color: AppColors.myTextDarkSoft,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        label,
                        style: const TextStyle(
                          fontSize: 14,
                          color: AppColors.myTextDarkSoft,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Text(
                  value,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.myTextDarkSoft,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
          if (label == 'Hétéro')
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Ne pas afficher sur mon profil',
                  style: TextStyle(fontSize: 10),
                ),
                Transform.scale(
                  scale: 0.3,
                  child: Switch(
                    value: showOnProfile,
                    onChanged: onSwitchChanged,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
