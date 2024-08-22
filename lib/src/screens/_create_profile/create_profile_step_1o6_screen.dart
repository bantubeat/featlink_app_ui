import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/components/gradiant_bottom_bar.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:featlink_app/src/config/app_colors.dart';

class CreateProfileStep1o6Screen extends StatefulWidget {
  const CreateProfileStep1o6Screen({super.key});

  @override
  State<CreateProfileStep1o6Screen> createState() =>
      _CreateProfileStep1o6ScreenState();
}

class _CreateProfileStep1o6ScreenState
    extends State<CreateProfileStep1o6Screen> {
  final List<String> sizes = [
    LocaleKeys.create_profile_step_1o6_screen_size_small.tr(),
    LocaleKeys.create_profile_step_1o6_screen_size_medium.tr(),
    LocaleKeys.create_profile_step_1o6_screen_size_tall.tr(),
  ];

  final List<String> weights = [
    LocaleKeys.create_profile_step_1o6_screen_weight_light.tr(),
    LocaleKeys.create_profile_step_1o6_screen_weight_medium.tr(),
    LocaleKeys.create_profile_step_1o6_screen_weight_heavy.tr(),
  ];

  String _weight = '';
  String _size = '';

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
                '7/11',
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
                children: [
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      LocaleKeys.create_profile_step_1o6_screen_title.tr(),
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
                  Text(
                    LocaleKeys.create_profile_step_1o6_screen_size.tr(),
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
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
                                    .sizeIcon, // Pass assets using AppAssets
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: List.generate(sizes.length, (index) {
                              return GestureDetector(
                                onTap: () => {
                                  setState(() {
                                    _size = sizes[index];
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
                                    color: _size == sizes[index]
                                        ? AppColors.primary
                                        : Colors.white,
                                    border: Border.all(
                                      width: 2.0,
                                      color: AppColors.primary,
                                    ),
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Text(
                                    sizes[index],
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: _size == sizes[index]
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
                  Text(
                    LocaleKeys.create_profile_step_1o6_screen_weight.tr(),
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
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
                                AppAssets.weightIcon,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: List.generate(weights.length, (index) {
                              return GestureDetector(
                                onTap: () => {
                                  setState(() {
                                    _weight = weights[index];
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
                                    color: _weight == weights[index]
                                        ? AppColors.primary
                                        : Colors.white,
                                    border: Border.all(
                                      width: 2.0,
                                      color: AppColors.primary,
                                    ),
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Text(
                                    weights[index],
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: _weight == weights[index]
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
