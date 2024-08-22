import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/gradiant_bottom_bar.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/year_picker_dialog.dart';

class CreateProfileStep1o2Screen extends StatefulWidget {
  @override
  State<CreateProfileStep1o2Screen> createState() =>
      _CreateProfileStep1o2ScreenState();
}

class _CreateProfileStep1o2ScreenState
    extends State<CreateProfileStep1o2Screen> {
  DateTime _selectedDate = DateTime.now();

  void _showYearSelectionDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return YearPickerDialog(
          selectedDate: _selectedDate,
          onDateChanged: (DateTime newDate) {
            setState(() {
              _selectedDate = newDate;
            });
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chevron_left, size: 40),
        ),
        actions: const [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Text(
                '2/11',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      LocaleKeys.create_profile_step_1o2_screen_birth_year.tr(),
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset(
                          AppAssets.svgStep1o2Icon,
                          width: 200.0,
                          height: 200.0,
                        ),
                        Center(
                          child: Image.asset(
                            width: 100.0,
                            height: 100.0,
                            AppAssets.createProfileStep1o2Image,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: ElevatedButton(
                      onPressed: _showYearSelectionDialog,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.mySecondDark,
                        fixedSize: const Size.fromHeight(45),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        elevation: 0,
                        enableFeedback: true,
                        overlayColor: AppColors.primaryLight,
                        splashFactory: InkRipple.splashFactory,
                        side: const BorderSide(
                          width: 3.0,
                          color: AppColors.primary,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              Text(
                                _selectedDate.year.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..color = AppColors.primary
                                    ..strokeWidth = 3,
                                ),
                              ),
                              Text(
                                _selectedDate.year.toString(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                  color: AppColors.myWhite,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.white,
                            size: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          PrimaryButton(
            text: LocaleKeys.common_next.tr(),
            onPressed: (_) {},
            fontSize: 24,
          ),
          const GradiantBottomBar(),
        ],
      ),
    );
  }
}
