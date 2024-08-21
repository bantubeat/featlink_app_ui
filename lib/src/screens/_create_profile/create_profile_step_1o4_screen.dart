import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/components/gradiant_bottom_bar.dart';
import 'package:featlink_app/src/utils/image_service.dart';

class CreateProfileStep1o4Screen extends StatefulWidget {
  const CreateProfileStep1o4Screen({super.key});

  @override
  State<CreateProfileStep1o4Screen> createState() =>
      _CreateProfileStep1o4ScreenState();
}

class _CreateProfileStep1o4ScreenState
    extends State<CreateProfileStep1o4Screen> {
  XFile? _imagePicked;

  void pickImage(BuildContext context) {
    ImageService.showPickImage(
      context,
      onImagePicked: (file) {
        setState(() => _imagePicked = file);
      },
    );
  }

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
                '4/11',
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
          const SizedBox(
            height: 32,
          ),
          Text(
            LocaleKeys.create_profile_step_1o4_screen_avatar.tr(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            LocaleKeys.create_profile_step_1o4_screen_add_avatar.tr(),
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            LocaleKeys.create_profile_step_1o4_screen_description.tr(),
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 64,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    _imagePicked == null
                        ? DottedBorder(
                            borderType: BorderType.RRect,
                            radius: const Radius.circular(112),
                            dashPattern: const [4, 8],
                            color: AppColors.primary,
                            strokeWidth: 2,
                            child: GestureDetector(
                              onTap: () => pickImage(context),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Container(
                                  width: 192,
                                  height: 192,
                                  decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.circular(96),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.add_a_photo,
                                      color: Colors.white,
                                      size: 64,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        : GestureDetector(
                            onTap: () => pickImage(context),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(104),
                              child: kIsWeb
                                  ? Image.network(
                                      _imagePicked!.path,
                                      width: 208,
                                      height: 208,
                                      fit: BoxFit.cover,
                                    )
                                  : Image.file(
                                      File(_imagePicked!.path),
                                      width: 208,
                                      height: 208,
                                      fit: BoxFit.cover,
                                    ),
                            ),
                          ),
                  ],
                ),
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
