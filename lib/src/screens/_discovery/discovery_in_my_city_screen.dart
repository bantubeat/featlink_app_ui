import 'package:country_picker/country_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:featlink_app/src/components/select_dropdown.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

import 'widgets/discover_item.dart';

class DiscoveryInMyCityScreen extends StatefulWidget {
  const DiscoveryInMyCityScreen({super.key});

  @override
  State<DiscoveryInMyCityScreen> createState() =>
      _DiscoveryInMyCityScreenState();
}

class _DiscoveryInMyCityScreenState extends State<DiscoveryInMyCityScreen> {
  Country? selectedCountry;
  String selectedGender = LocaleKeys.discovery_in_my_city_screen_man.tr();
  String selectedOrientation =
      LocaleKeys.discovery_in_my_city_screen_heterosexual_label.tr();
  String selectedContinent =
      LocaleKeys.discovery_in_my_city_screen_african.tr();

  void handleShowCountryPicker(BuildContext context) {
    showCountryPicker(
      context: context,
      onSelect: (Country country) {
        setState(() {
          selectedCountry = country;
        });
      },
    );
  }

  void handleShowGenderPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.white,
          child: ListView.builder(
            itemCount: genderList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(genderList[index]),
                onTap: () {
                  setState(() {
                    selectedGender = genderList[index];
                  });
                  Navigator.pop(context);
                },
              );
            },
          ),
        );
      },
    );
  }

  void handleShowOrientationPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.white,
          child: ListView.builder(
            itemCount: genderList2.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(genderList2[index]),
                onTap: () {
                  setState(() {
                    selectedOrientation = genderList2[index];
                  });
                  Navigator.pop(context);
                },
              );
            },
          ),
        );
      },
    );
  }

  void handleShowContinentPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.white,
          child: ListView.builder(
            itemCount: continentList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(continentList[index]),
                onTap: () {
                  setState(() {
                    selectedContinent = continentList[index];
                  });
                  Navigator.pop(context);
                },
              );
            },
          ),
        );
      },
    );
  }

  List<dynamic> genderList = [
    LocaleKeys.discovery_in_my_city_screen_man.tr(),
    LocaleKeys.discovery_in_my_city_screen_woman.tr(),
    LocaleKeys.discovery_in_my_city_screen_others.tr(),
  ];
  List<dynamic> genderList2 = [
    LocaleKeys.discovery_in_my_city_screen_heterosexual_label.tr(),
    LocaleKeys.discovery_in_my_city_screen_lesbienne_label.tr(),
    LocaleKeys.discovery_in_my_city_screen_gay_label.tr(),
    LocaleKeys.discovery_in_my_city_screen_gender_other.tr(),
  ];
  List<dynamic> continentList = [
    LocaleKeys.discovery_in_my_city_screen_african.tr(),
    LocaleKeys.discovery_in_my_city_screen_europeen.tr(),
    LocaleKeys.discovery_in_my_city_screen_american.tr(),
    LocaleKeys.discovery_in_my_city_screen_asian.tr(),
    LocaleKeys.discovery_in_my_city_screen_oceanian.tr(),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 80,
                  width: size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage(
                        AppAssets.discoveryScreenHeaderImage,
                      ),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        AppColors.myWhite.withOpacity(0.2),
                        BlendMode.screen,
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      LocaleKeys.discovery_in_my_city_screen_title.tr(),
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.close,
                      weight: 50,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              LocaleKeys.discovery_in_my_city_screen_who_are_in_your_city.tr(),
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 10,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.tune,
                    ),
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 5,
                    children: [
                      Text(
                        LocaleKeys.discovery_in_my_city_screen_on_ligne.tr(),
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Container(
                        width: 30,
                        padding: const EdgeInsets.only(left: 5),
                        child: Transform.scale(
                          scale: 0.5,
                          alignment: Alignment.centerLeft,
                          child: Switch(
                            value: false,
                            onChanged: (value) {},
                          ),
                        ),
                      ),
                    ],
                  ),
                  // SelectDropdown(
                  //   onTap: () => handleShowCountryPicker(context),
                  //   value: selectedCountry?.name ?? 'Cameroun',
                  // ),
                  SelectDropdown(
                    onTap: () => handleShowGenderPicker(context),
                    value: selectedGender,
                  ),
                  SelectDropdown(
                    onTap: () => handleShowContinentPicker(context),
                    value: selectedContinent,
                  ),
                  SelectDropdown(
                    onTap: () => handleShowOrientationPicker(context),
                    value: selectedOrientation,
                  ),
                ],
              ),
            ),
            const Divider(
              color: AppColors.myGray,
            ),
            const SizedBox(height: 15),
            Container(
              width: size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                spacing: 15,
                runSpacing: 15,
                children: [
                  for (int i = 0; i < 9; i++)
                    DiscoveryItem(
                      name: 'Jane Doe',
                      image: AppAssets.fakeDiscoveryImage,
                      age: '25',
                      gender: LocaleKeys.discovery_in_my_city_screen_woman.tr(),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
      floatingActionButton: const AppNavigationBottomSheet(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
