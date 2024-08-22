import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/components/gradiant_bottom_bar.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:featlink_app/src/config/app_colors.dart';

class CreateProfileStep1o8Screen extends StatefulWidget {
  const CreateProfileStep1o8Screen({super.key});

  @override
  State<CreateProfileStep1o8Screen> createState() =>
      _CreateProfileStep1o8ScreenState();
}

class _CreateProfileStep1o8ScreenState
    extends State<CreateProfileStep1o8Screen> {
  final List<String> smokeOptions = [
    LocaleKeys.create_profile_step_1o8_screen_smoke_yes.tr(),
    LocaleKeys.create_profile_step_1o8_screen_smoke_no.tr(),
  ];

  final List<String> alcoolOptions = [
    LocaleKeys.create_profile_step_1o8_screen_alcool_never.tr(),
    LocaleKeys.create_profile_step_1o8_screen_alcool_often.tr(),
    LocaleKeys.create_profile_step_1o8_screen_alcool_party.tr(),
    LocaleKeys.create_profile_step_1o8_screen_alcool_regulary.tr(),
  ];

  String _smoke = '';
  String _alcool = '';

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
                '9/11',
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
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      LocaleKeys.create_profile_step_1o8_screen_title.tr(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      LocaleKeys.create_profile_step_1o8_screen_smoke.tr(),
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: SizedBox.square(
                            dimension: 180,
                            child: Center(
                              child: Image.asset(
                                AppAssets
                                    .smokeIcon, // Pass assets using AppAssets
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            children:
                                List.generate(smokeOptions.length, (index) {
                              return GestureDetector(
                                onTap: () => {
                                  setState(() {
                                    _smoke = smokeOptions[index];
                                  }),
                                },
                                child: Container(
                                  width: double.infinity,
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8.0,
                                    horizontal: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: _smoke == smokeOptions[index]
                                        ? AppColors.primary
                                        : Colors.white,
                                    border: Border.all(
                                      width: 2.0,
                                      color: AppColors.primary,
                                    ),
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Text(
                                    smokeOptions[index],
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: _smoke == smokeOptions[index]
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      LocaleKeys.create_profile_step_1o8_screen_alcool.tr(),
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: SizedBox.square(
                            dimension: 180,
                            child: Center(
                              child: Image.asset(
                                AppAssets.alcoolIcon,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            children:
                                List.generate(alcoolOptions.length, (index) {
                              return GestureDetector(
                                onTap: () => {
                                  setState(() {
                                    _alcool = alcoolOptions[index];
                                  }),
                                },
                                child: Container(
                                  width: double.infinity,
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8.0,
                                    horizontal: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: _alcool == alcoolOptions[index]
                                        ? AppColors.primary
                                        : Colors.white,
                                    border: Border.all(
                                      width: 2.0,
                                      color: AppColors.primary,
                                    ),
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Text(
                                    alcoolOptions[index],
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: _alcool == alcoolOptions[index]
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: PrimaryButton(
              text: LocaleKeys.common_next.tr(),
              onPressed: (_) {},
              fontSize: 16,
            ),
          ),
          const GradiantBottomBar(),
        ],
      ),
    );
  }
}
