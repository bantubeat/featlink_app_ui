import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/ddaycard.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class TheDDayTab extends StatelessWidget {
  final List<Map<String, dynamic>> datas;
  const TheDDayTab({required this.datas, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 5, right: 5),
                height: MediaQuery.of(context).size.height * 0.04,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.myGray,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: LocaleKeys.d_day_screen_country_cameroun.tr(),
                    items: <String>[LocaleKeys.d_day_screen_country_cameroun.tr(), LocaleKeys.d_day_screen_country_france.tr(), LocaleKeys.d_day_screen_country_maroc.tr()]
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(fontSize: 10),
                        ),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                LocaleKeys.d_day_screen_the_d_day_subtitle.tr(),
                textAlign: TextAlign.start,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 17,),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                LocaleKeys.d_day_screen_the_d_day_text.tr(),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: datas.length,
              itemBuilder: (context, index) {
                var data = datas[index];
                return DDayCard(
                  username: data['username'],
                  userImageUrl: data['userImageUrl'],
                  title: data['title'],
                  location: data['location'],
                  date: data['date'],
                  imageUrl: data['imageUrl'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
