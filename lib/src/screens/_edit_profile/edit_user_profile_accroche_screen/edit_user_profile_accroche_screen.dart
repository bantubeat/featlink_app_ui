import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:featlink_app/src/utils/image_service.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'widgets/image_card.dart';

class EditUserProfileAccroche extends StatefulWidget {
  const EditUserProfileAccroche({super.key});

  @override
  State<EditUserProfileAccroche> createState() =>
      _EditUserProfileAccrocheState();
}

class _EditUserProfileAccrocheState extends State<EditUserProfileAccroche> {
  final List<XFile> _imagePicked = [];

  void pickImage(BuildContext context) {
    ImageService.showPickImage(
      context,
      onImagePicked: (file) {
        if (file != null) {
          if (mounted) {
            setState(() => _imagePicked.add(file));
          }
        }
      },
    );
  }

  void handleDeleteImage(int index) {
    setState(() {
      _imagePicked.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Column(
            children: [
              const UserProfil(),
              const SizedBox(
                height: 20,
              ),
              TextField(
                style: const TextStyle(height: 3),
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 31, 35, 41),
                    ),
                  ),
                  hintText: LocaleKeys
                      .edit_user_profile_accroche_screen_write_accroche_essage
                      .tr(),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  LocaleKeys
                      .edit_user_profile_accroche_screen_max_number_characters
                      .tr(),
                  style: const TextStyle(
                    color: AppColors.secondary,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Wrap(
                children: [
                  Text(
                    LocaleKeys
                        .edit_user_profile_accroche_screen_add_media_message
                        .tr(),
                    style: const TextStyle(fontSize: 13),
                  ),
                ],
              ),
              InkWell(
                onTap: () => pickImage(context),
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: AppColors.myGray),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: AppColors.myGray,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.add_photo_alternate_outlined,
                          size: 50,
                        ),
                        Text(
                          LocaleKeys.edit_user_profile_accroche_screen_addText
                              .tr(),
                          style: const TextStyle(
                            color: AppColors.secondary,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              for (int i = 0; i < _imagePicked.length; i++)
                ImageCard(
                  index: i,
                  onCloseImage: handleDeleteImage,
                  image: AppAssets.imgTmp1,
                ),
              const SizedBox(
                height: 50,
              ),
              PrimaryButton(
                text: LocaleKeys.edit_user_profile_accroche_screen_save.tr(),
                onPressed: (context) {},
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const AppNavigationBottomSheet(),
    );
  }
}

class UserProfil extends StatelessWidget {
  const UserProfil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primary, width: 3),
        borderRadius: BorderRadius.circular(80),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            bottom: 0,
            left: 0,
            child: ClipOval(
              child: Image.asset(
                AppAssets.imgTmp1,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.myGray,
                borderRadius: BorderRadius.circular(80),
              ),
              padding: const EdgeInsets.all(5),
              child: const Icon(
                Icons.camera_alt_rounded,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
