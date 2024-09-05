import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class LongTextExpand extends StatefulWidget {
  final String text;

  const LongTextExpand({
    required this.text,
    super.key,
  });

  @override
  State<LongTextExpand> createState() => _LongTextExpandState();
}

class _LongTextExpandState extends State<LongTextExpand> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    double fontSize = 14;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _isExpanded
            ? Text(
                widget.text,
                style: TextStyle(fontSize: fontSize),
              )
            : Text(
                widget.text,
                style: TextStyle(fontSize: fontSize),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
        (!_isExpanded)
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    _isExpanded = true;
                  });
                },
                child: Text(
                  LocaleKeys.profile_visitor_view_screen_read_more.tr(),
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : GestureDetector(
                onTap: () {
                  setState(() {
                    _isExpanded = false;
                  });
                },
                child: Text(
                  LocaleKeys.profile_visitor_view_screen_read_less.tr(),
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
      ],
    );
  }
}
