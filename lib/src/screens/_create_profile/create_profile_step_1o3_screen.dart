import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/screens/_create_profile/widgets/create_profile_step_bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart'
    show FontAwesome;
import 'package:country_picker/country_picker.dart';
import 'package:featlink_app/src/components/form/input_text_field.dart';

class CreateProfileStep1o3Screen extends StatefulWidget {
  const CreateProfileStep1o3Screen({super.key});

  @override
  State<CreateProfileStep1o3Screen> createState() =>
      _CreateProfileStep1o3ScreenState();
}

class _CreateProfileStep1o3ScreenState
    extends State<CreateProfileStep1o3Screen> {
  String _country = 'CM';
  String _city = 'Douala';

  final List<Map<String, String>> cities = [
    {'name': 'Douala'},
    {'name': 'Yaounde'},
    {'name': 'Dschang'},
    {'name': 'Bafoussam'},
    {'name': 'Bertoua'},
    {'name': 'Garoua'},
    {'name': 'Maroua'},
    {'name': 'Bamenda'},
    {'name': 'Limbe'},
    {'name': 'Kribi'},
    {'name': 'Ebolowa'},
    {'name': 'Ngaoundere'},
    {'name': 'Kumba'},
    {'name': 'Buea'},
  ];

  void _startCountryPicker(BuildContext context) {
    showCountryPicker(
      context: context,
      countryListTheme: CountryListThemeData(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        inputDecoration: InputDecoration(
          hintText: LocaleKeys.create_profile_step_1o3_screen_country.tr(),
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.primary,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.primary,
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
        ),
      ),
      onSelect: (Country country) {
        setState(() {
          _country = country.countryCode;
        });
      },
    );
  }

  void _startCityPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.9,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              InputTextField(
                hintText: LocaleKeys.create_profile_step_1o3_screen_city.tr(),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.separated(
                  itemCount: cities.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pop(context, cities[index]['name']);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          cities[index]['name']!,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.grey[300],
                      thickness: 1,
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    ).then((selectedCity) {
      if (selectedCity != null) {
        setState(() {
          _city = selectedCity;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chevron_left, size: 40),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          Text(
            LocaleKeys.create_profile_step_1o3_screen_country_and_city.tr(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            LocaleKeys.create_profile_step_1o3_screen_add_your_city.tr(),
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            LocaleKeys.create_profile_step_1o3_screen_info_nearby_people.tr(),
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 32,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Container(
                      width: 128,
                      height: 128,
                      decoration: BoxDecoration(
                        color: AppColors.myPrimarySoft.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(64),
                      ),
                      child: const Center(
                        child: Icon(
                          FontAwesome.flag,
                          color: AppColors.primary,
                          size: 48,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    GestureDetector(
                      onTap: () => _startCountryPicker(context),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: AppColors.primary, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Text(
                              _country,
                              style: const TextStyle(color: AppColors.primary),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                Country.tryParse(_country)?.name ?? '',
                                style: const TextStyle(
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_drop_down,
                              color: AppColors.primary,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () => _startCityPicker(context),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: AppColors.primary, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                _city,
                                style: const TextStyle(
                                  color: AppColors.primary,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.arrow_drop_down,
                              color: AppColors.primary,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const CreateProfileStepBottom(),
        ],
      ),
    );
  }
}
