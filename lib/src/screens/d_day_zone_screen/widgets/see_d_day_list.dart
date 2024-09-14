import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/ddaycard.dart';
import 'package:featlink_app/src/components/gradiant_button.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

class SeeDdayList extends StatelessWidget {
  SeeDdayList({super.key});

  final List dDays = [
    {
      'title': "Envie d'aller danser",
      'location': 'Douala',
      'date': 'Samedi 14/01',
      'imageUrl': AppAssets.theddayimagefirst,
      'username': '',
      'interested': 10,
    },
    {
      'title': "Envie d'un verre",
      'location': 'Yaoundé',
      'date': "Aujourd'hui",
      'imageUrl': AppAssets.theddayimagesecond,
      'username': '',
      'interested': 50,
    },
    {
      'title': 'Un fastfood',
      'location': 'Yaoundé',
      'date': 'du 14/01 au 17/01',
      'imageUrl': AppAssets.theddayimagethree,
      'username': '',
      'interested': 20,
    },
    {
      'title': 'Une balade',
      'location': 'Limbé',
      'date': "Aujourd'hui",
      'imageUrl': AppAssets.theddayimagefour,
      'username': '',
      'interested': 30,
    },
    {
      'title': "Envie d'aller danser",
      'location': 'Douala',
      'date': 'Samedi 14/01',
      'imageUrl': AppAssets.theddayimagefirst,
      'username': '',
      'interested': 120,
    },
    {
      'title': "Envie d'un verre",
      'location': 'Yaoundé',
      'date': "Aujourd'hui",
      'imageUrl': AppAssets.theddayimagesecond,
      'username': '',
      'interested': 10,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          GradiantButton(
            elevation: true,
            borderRadius: BorderRadius.circular(25),
            fixedSize: const Size(double.infinity, 50),
            isThreeColor: true,
            label: LocaleKeys.see_d_day_list_screen_publish_d_day
                .tr(), // Utilisation de la localisation
            onPressed: () {},
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: dDays.length,
              itemBuilder: (context, index) {
                var dDay = dDays[index];
                return Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.35,
                        child: DDayCard(
                          title: dDay['title'],
                          location: '',
                          date: dDay['date'],
                          imageUrl: dDay['imageUrl'],
                          username: '',
                          userImageUrl: '',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.35,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      LocaleKeys.see_d_day_list_screen_you_have
                                          .tr(),
                                    ),
                                    Text(
                                      dDay['interested'].toString() +
                                          LocaleKeys
                                              .see_d_day_list_screen_interested_people
                                              .tr(),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.primary,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  LocaleKeys.see_d_day_list_screen_interested
                                      .tr(),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: AppColors.primary),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 4,
                              ),
                              child: Text(
                                LocaleKeys.see_d_day_list_screen_see_list.tr(),
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
