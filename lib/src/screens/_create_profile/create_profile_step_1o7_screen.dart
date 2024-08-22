import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/components/gradiant_bottom_bar.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:featlink_app/src/config/app_colors.dart';

class CreateProfileStep1o7Screen extends StatefulWidget {
  const CreateProfileStep1o7Screen({super.key});

  @override
  State<CreateProfileStep1o7Screen> createState() =>
      _CreateProfileStep1o7ScreenState();
}

class _CreateProfileStep1o7ScreenState
    extends State<CreateProfileStep1o7Screen> {
  final List<String> hasChildrenOptions = [
    LocaleKeys.create_profile_step_1o7_screen_children_yes.tr(),
    LocaleKeys.create_profile_step_1o7_screen_children_no.tr(),
  ];

  final List<String> degrees = [
    LocaleKeys.create_profile_step_1o7_screen_degree_none.tr(),
    LocaleKeys.create_profile_step_1o7_screen_degree_bac.tr(),
    LocaleKeys.create_profile_step_1o7_screen_degree_master.tr(),
    LocaleKeys.create_profile_step_1o7_screen_degree_doctor.tr(),
  ];

  String _hasChildren = '';
  String _degree = '';

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
                '8/11',
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      LocaleKeys.create_profile_step_1o7_screen_children.tr(),
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
                                    .babyIcon, // Pass assets using AppAssets
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            children: List.generate(hasChildrenOptions.length,
                                (index) {
                              return GestureDetector(
                                onTap: () => {
                                  setState(() {
                                    _hasChildren = hasChildrenOptions[index];
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
                                    color: _hasChildren ==
                                            hasChildrenOptions[index]
                                        ? AppColors.primary
                                        : Colors.white,
                                    border: Border.all(
                                      width: 2.0,
                                      color: AppColors.primary,
                                    ),
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Text(
                                    hasChildrenOptions[index],
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: _hasChildren ==
                                              hasChildrenOptions[index]
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
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      LocaleKeys.create_profile_step_1o7_screen_degree.tr(),
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
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
                                AppAssets.degreeIcon,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            children: List.generate(degrees.length, (index) {
                              return GestureDetector(
                                onTap: () => {
                                  setState(() {
                                    _degree = degrees[index];
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
                                    color: _degree == degrees[index]
                                        ? AppColors.primary
                                        : Colors.white,
                                    border: Border.all(
                                      width: 2.0,
                                      color: AppColors.primary,
                                    ),
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Text(
                                    degrees[index],
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      color: _degree == degrees[index]
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
