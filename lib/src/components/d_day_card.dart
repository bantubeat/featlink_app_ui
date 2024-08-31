import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/screens/d_day_zone_screen/widgets/d_day_dialog.dart';
import 'package:flutter/material.dart';

class DDayCard extends StatelessWidget {
  final String title;
  final String location;
  final String date;
  final String imageUrl;
  final String username;
  final String userImageUrl;

  const DDayCard({
    required this.title,
    required this.location,
    required this.date,
    required this.imageUrl,
    required this.username,
    required this.userImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (_) => DDayDialog(
            name: username,
          ),
        );
      },
      child: Card(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Positioned(
              top: 8,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
										
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    width: MediaQuery.of(context).size.width / 2 - 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(userImageUrl),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                   Icon(
                                    Icons.timer,
                                    color: AppColors.myWhite,
                                    size: MediaQuery.of(context).size.width * 0.015,
                                  ),
                                  Text(
                                    date,
                                    style:  TextStyle(
                                      color: Colors.white,
                                      fontSize: MediaQuery.of(context).size.width * 0.015,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 20,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            '$username, ',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            location,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.15,
              left: 8,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width * 0.06,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 8,
              child: GestureDetector(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColors.myWhite),
                  ),
                  child: Text(
                    LocaleKeys.d_day_screen_intrested.tr(),
                    style: const TextStyle(color: AppColors.myWhite),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
