import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/components/gradiant_bottom_bar.dart';
import 'package:featlink_app/src/components/logo.dart';
import 'package:featlink_app/src/resources/app_assets.dart';

class CreateProfileStep2o3Screen extends StatefulWidget {
  const CreateProfileStep2o3Screen({super.key});

  @override
  State<CreateProfileStep2o3Screen> createState() =>
      _CreateProfileStep2o3ScreenState();
}

class _CreateProfileStep2o3ScreenState
    extends State<CreateProfileStep2o3Screen> {
  final Map<String, String> user = const {
    'gender': 'Home',
    'city': 'Bruxelles',
    'size': 'Moyenne (151 - 199cm)',
    'weight': '60kg a 90kg',
    'has_children': 'Oui',
    'smoke': 'Non',
    'alcool': 'En soiree',
    'search': 'Femme - Amitie, relation libre - Dialogue uniquement',
    'degree': 'Aucun',
    'live': 'En Colocation',
    'sexual': 'Hetero',
    'ethnicity': 'Africaine',
  };

  final List<List<String>> attributesList = [
    ['gender', LocaleKeys.create_profile_step_2o3_screen_gender.tr()],
    ['city', LocaleKeys.create_profile_step_2o3_screen_city.tr()],
    ['size', LocaleKeys.create_profile_step_2o3_screen_size.tr()],
    ['weight', LocaleKeys.create_profile_step_2o3_screen_weight.tr()],
    [
      'has_children',
      LocaleKeys.create_profile_step_2o3_screen_has_children.tr(),
    ],
    ['smoke', LocaleKeys.create_profile_step_2o3_screen_smoke.tr()],
    ['alcool', LocaleKeys.create_profile_step_2o3_screen_alcool.tr()],
    ['search', LocaleKeys.create_profile_step_2o3_screen_search.tr()],
    ['degree', LocaleKeys.create_profile_step_2o3_screen_degree.tr()],
    ['live', LocaleKeys.create_profile_step_2o3_screen_live.tr()],
    ['sexual', LocaleKeys.create_profile_step_2o3_screen_sexual.tr()],
    ['ethnicity', LocaleKeys.create_profile_step_2o3_screen_ethnicity.tr()],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Text(
                '1/3',
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Logo(size: 96),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 16.0, left: 8),
                              child: Text(
                                LocaleKeys.create_profile_step_2o3_screen_title
                                    .tr(),
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    ClipOval(
                                      child: Image.asset(
                                        AppAssets
                                            .imageLogo, // Pass assets using AppAssets
                                        width: 64,
                                        height: 64,
                                      ),
                                    ),
                                    const Text(
                                      'Pierre, 34',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                const Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 4.0),
                                    child: Text(
                                      'Hello, je suis Pierre. Content creator resident a Douala je recherche des partenaires dans le design cinema',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Column(
                    children: List.generate(attributesList.length, (index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 16,
                        ),
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Colors.grey, // Choose your border color
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(attributesList[index][1]),
                            ),
                            Expanded(
                              flex: 2,
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  user[attributesList[index][0]] ?? '',
                                  //textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
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
