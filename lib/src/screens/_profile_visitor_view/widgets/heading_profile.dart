import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'heading_imaga_item.dart';
import 'profile_images_view_dialog.dart';

class HeadingProfile extends StatefulWidget {
  const HeadingProfile({
    super.key,
  });

  @override
  State<HeadingProfile> createState() => _HeadingProfileState();
}

class _HeadingProfileState extends State<HeadingProfile> {
  final PageController _pageController = PageController();
  int currentIndex = 0;
  List<String> images = [
    AppAssets.fakeProfile1Image,
    AppAssets.fakeProfile2Image,
    AppAssets.fakeProfile3Image,
    AppAssets.fakeProfile4Image,
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      height: size.height - 250,
      width: size.width,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 146, 146, 146),
      ),
      child: GestureDetector(
        onDoubleTap: () {
          showDialog(
            context: context,
            builder: (context) => const Scaffold(
              backgroundColor: Colors.transparent,
              body: ProfileImagesViewDialog(),
            ),
          );
        },
        child: Stack(
          children: [
            SizedBox(
              height: size.height,
              child: PageView.builder(
                controller: _pageController,
                itemCount: images.length,
                onPageChanged: (value) => setState(() => currentIndex = value),
                itemBuilder: (context, index) => HeadingImageItem(
                  imageSource: images[index],
                ),
              ),
            ),
            Positioned(
              top: 20,
              child: Container(
                width: size.width,
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: images.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () {
                        _pageController.jumpToPage(
                          entry.key,
                        );
                        setState(() => currentIndex = entry.key);
                      },
                      child: Container(
                        width: ((size.width - 20) / images.length) - 8,
                        height: 4,
                        decoration: BoxDecoration(
                          color: currentIndex == entry.key
                              ? AppColors.myWhite
                              : AppColors.mySecondDark,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              child: SizedBox(
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: SvgPicture.asset(
                        AppAssets.dislikeIcon,
                        width: 50,
                        height: 50,
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      child: SvgPicture.asset(
                        AppAssets.starIcon,
                        width: 35,
                        height: 35,
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      child: SvgPicture.asset(
                        AppAssets.likeIcon,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
