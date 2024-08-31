import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:featlink_app/src/screens/user_side_profile_screen/widget/circlepainter.dart';
import 'package:flutter/material.dart';

class UserSideProfileScreen extends StatefulWidget {
  const UserSideProfileScreen({super.key});

  @override
  State<UserSideProfileScreen> createState() => _UserSideProfileScreenState();
}

class _UserSideProfileScreenState extends State<UserSideProfileScreen> {
  List<String> girlImage = [
    'data:image/jpeg;base64,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',
    'data:image/jpeg;base64,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',
    'data:image/jpeg;base64,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',
    'data:image/jpeg;base64,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',
  ];

  List<String> interets = [
    LocaleKeys.user_side_profile_screen_football.tr(),
    LocaleKeys.user_side_profile_screen_live_music.tr(),
    LocaleKeys.user_side_profile_screen_cooking.tr(),
  ];

  final List<Map<String, dynamic>> profileData = [
    {
      'icon': Icons.location_city_outlined,
      'label': LocaleKeys.user_side_profile_screen_location.tr(),
      'value': LocaleKeys.user_side_profile_screen_location.tr(),
    },
    {
      'icon': Icons.balance_outlined,
      'label': LocaleKeys.user_side_profile_screen_height.tr(),
      'value': LocaleKeys.user_side_profile_screen_height.tr(),
    },
    {
      'icon': Icons.fitness_center_outlined,
      'label': LocaleKeys.user_side_profile_screen_weight.tr(),
      'value': LocaleKeys.user_side_profile_screen_weight.tr(),
    },
    {
      'icon': Icons.groups_3_outlined,
      'label': LocaleKeys.user_side_profile_screen_yes.tr(),
      'value': LocaleKeys.user_side_profile_screen_yes.tr(),
    },
    {
      'icon': Icons.smoking_rooms_outlined,
      'label': LocaleKeys.user_side_profile_screen_yes.tr(),
      'value': LocaleKeys.user_side_profile_screen_yes.tr(),
    },
    {
      'icon': Icons.nightlife_outlined,
      'label': LocaleKeys.user_side_profile_screen_party.tr(),
      'value': LocaleKeys.user_side_profile_screen_party.tr(),
    },
    {
      'icon': Icons.favorite_border_outlined,
      'label':
          LocaleKeys.user_side_profile_screen_friendship_free_relation.tr(),
      'value': '',
    },
    {
      'icon': Icons.school_outlined,
      'label': LocaleKeys.user_side_profile_screen_none.tr(),
      'value': LocaleKeys.user_side_profile_screen_none.tr(),
    },
    {
      'icon': Icons.group_outlined,
      'label': LocaleKeys.user_side_profile_screen_alone.tr(),
      'value': LocaleKeys.user_side_profile_screen_alone.tr(),
    },
    {
      'icon': Icons.transgender_outlined,
      'label': LocaleKeys.user_side_profile_screen_hetero.tr(),
      'value': LocaleKeys.user_side_profile_screen_hetero.tr(),
    },
    {
      'icon': Icons.public,
      'label': LocaleKeys.user_side_profile_screen_african.tr(),
      'value': LocaleKeys.user_side_profile_screen_european.tr(),
    },
    {
      'icon': Icons.church_outlined,
      'label': LocaleKeys.user_side_profile_screen_islam.tr(),
      'value': LocaleKeys.user_side_profile_screen_islam.tr(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double containerImageHeight = girlImage.length * (height * 0.62);

    return Scaffold(
      backgroundColor: const Color.fromARGB(94, 198, 208, 209),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.85,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  FirstBlock(height: height, width: width),
                  customDivider(
                    width,
                    height,
                    LocaleKeys.user_side_profile_screen_about.tr(),
                  ),
                  ...profileData.map(
                    (data) => Container(
                      height: height * 0.08,
                      decoration: BoxDecoration(
                        color: AppColors.myWhite,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(0, 2),
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      margin: const EdgeInsets.only(top: 13),
                      child: ListTile(
                        leading: Icon(
                          data['icon'],
                          color: AppColors.myTextDarkSoft,
                        ),
                        title: Text(
                          data['label'],
                          style: TextStyle(
                            fontSize: width * 0.04,
                            color: AppColors.myTextDarkSoft,
                          ),
                        ),
                        trailing: Text(
                          data['value'],
                          style: TextStyle(
                            fontSize: width * 0.04,
                            color: AppColors.myTextDarkSoft,
                          ),
                        ),
                      ),
                    ),
                  ),
                  customDivider(
                    width,
                    height,
                    LocaleKeys.user_side_profile_screen_interests.tr(),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.04,
                    ),
                    color: AppColors.myWhite,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: height * 0.02,
                            horizontal: width * 0.04,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.04,
                            vertical: height * 0.02,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.myGray,
                              width: 2,
                            ),
                            color: AppColors.myWhite,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                color: AppColors.myGray,
                                offset: Offset(0, 5),
                                blurRadius: 3,
                              ),
                            ],
                          ),
                          height: height * 0.2,
                          width: width,
                          child: Text(
                            LocaleKeys.user_side_profile_screen_hook_message
                                .tr(),
                            style: TextStyle(
                              fontSize: width * 0.03,
                              color: AppColors.myTextDarkSoft,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: containerImageHeight,
                          child: ListView.builder(
                            itemCount: girlImage.length,
                            itemBuilder: (context, index) {
                              return Container(
                                height: height * 0.6,
                                decoration: BoxDecoration(
                                  color: AppColors.myWhite,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      offset: const Offset(0, 2),
                                      blurRadius: 3,
                                    ),
                                  ],
                                ),
                                margin: const EdgeInsets.only(top: 7),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    girlImage[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        customDivider(
                          width,
                          height,
                          LocaleKeys.user_side_profile_screen_interests.tr(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: width * 0.02,
                            right: width * 0.02,
                            bottom: height * 0.1,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: List.generate(3, (index) {
                              return Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.04,
                                  vertical: height * 0.01,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColors.myGray,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Text(
                                  interets[index],
                                  style: TextStyle(
                                    color: AppColors.myTextDarkSoft,
                                    fontSize: width * 0.04,
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(child: AppNavigationBottomSheet()),
        ],
      ),
    );
  }

  Column customDivider(
    double width,
    double height,
    String title,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          color: AppColors.myGray600,
          height: 15,
          width: width,
          child: const Text(''),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          height: height * 0.09,
          color: AppColors.myWhite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: width * 0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Container(
                      width: width * 0.06,
                      height: width * 0.06,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.edit,
                        size: width * 0.04,
                      ),
                    ),
                  ),
                  Text(
                    LocaleKeys.user_side_profile_screen_edit.tr(),
                    style: TextStyle(
                      fontSize: width * 0.03,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class FirstBlock extends StatelessWidget {
  const FirstBlock({
    required this.height,
    required this.width,
    super.key,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: width * 0.05,
              right: width * 0.05,
            ),
            decoration: BoxDecoration(
              color: AppColors.myWhite,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.elliptical(200, 50),
                bottomRight: Radius.elliptical(200, 50),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(0, 6),
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: height * 0.02,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomPaint(
                      size: Size(
                        width * 0.21,
                        width * 0.21,
                      ),
                      painter: CircleDemiTraitPainter(),
                    ),
                    CircleAvatar(
                      radius: width * 0.11,
                      backgroundImage: const NetworkImage(
                        'data:image/jpeg;base64,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',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.015),
                Text(
                  LocaleKeys.user_side_profile_screen_screen_name.tr(),
                  style: TextStyle(
                    fontSize: width * 0.04,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Container(
                              width: width * 0.08,
                              height: width * 0.08,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.myDark.withOpacity(0.5),
                                ),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Icon(
                                Icons.settings,
                                color: AppColors.myDark.withOpacity(0.5),
                                size: width * 0.04,
                              ),
                            ),
                          ),
                          Text(
                            LocaleKeys.user_side_profile_screen_settings.tr(),
                            style: TextStyle(
                              fontSize: width * 0.03,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(
                                255,
                                110,
                                110,
                                110,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              IconButton(
                                icon: Container(
                                  width: width * 0.08,
                                  height: width * 0.08,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.myDark.withOpacity(0.5),
                                    ),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Icon(
                                    Icons.edit,
                                    color: AppColors.myDark.withOpacity(0.5),
                                    size: width * 0.04,
                                  ),
                                ),
                                onPressed: () {},
                              ),
                              Positioned(
                                top: 4,
                                right: 16,
                                child: Container(
                                  width: width * 0.015,
                                  height: width * 0.015,
                                  decoration: const BoxDecoration(
                                    color: Colors.orange,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            LocaleKeys.user_side_profile_screen_edit.tr(),
                            style: TextStyle(
                              fontSize: width * 0.03,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(
                                255,
                                110,
                                110,
                                110,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Container(
                        width: width * 0.08,
                        height: width * 0.08,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.myDark.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Image.asset(
                          AppAssets.starIcon,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Text(
                      LocaleKeys.user_side_profile_screen_subscription.tr(),
                      style: TextStyle(
                        fontSize: width * 0.03,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 110, 110, 110),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.03),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.12,
              vertical: 24,
            ),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.02),
                    Text(
                      LocaleKeys.user_side_profile_screen_profile_certification
                          .tr(),
                      style: TextStyle(
                        fontSize: width * 0.035,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      LocaleKeys
                          .user_side_profile_screen_profile_certification_description
                          .tr(),
                      style: TextStyle(
                        fontSize: width * 0.03,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  LocaleKeys.user_side_profile_screen_balance_beatzcoin.tr(),
                  style: TextStyle(
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      LocaleKeys
                          .user_side_profile_screen_balance_beatzcoin_value
                          .tr(),
                      style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text(
                            LocaleKeys
                                .user_side_profile_screen_withdraw_beatzcoin
                                .tr(),
                            style: TextStyle(
                              color: AppColors.myDark,
                              fontSize: width * 0.025,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text(
                            LocaleKeys.user_side_profile_screen_buy_beatzcoin
                                .tr(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.025,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
    );
  }
}
