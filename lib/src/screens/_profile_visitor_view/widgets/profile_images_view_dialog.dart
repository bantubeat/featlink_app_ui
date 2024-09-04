import 'package:featlink_app/src/config/app_colors.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

class ProfileImagesViewDialog extends StatefulWidget {
  const ProfileImagesViewDialog({
    super.key,
  });

  @override
  State<ProfileImagesViewDialog> createState() =>
      _ProfileImagesViewDialogState();
}

class _ProfileImagesViewDialogState extends State<ProfileImagesViewDialog> {
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
    return Center(
      child: Container(
        width: size.width,
        height: size.height,
        color: AppColors.myWhite,
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: size.height,
                width: size.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 146, 146, 146),
                ),
                child: Stack(
                  children: [
                    PageView.builder(
                      controller: _pageController,
                      itemCount: images.length,
                      onPageChanged: (value) =>
                          setState(() => currentIndex = value),
                      itemBuilder: (context, index) => Image.asset(
                        images[index],
                        width: size.width,
                        height: size.height,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 30,
                      child: Container(
                        width: size.width,
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: const Icon(
                                Icons.close_sharp,
                                color: AppColors.myWhite,
                                size: 30,
                                weight: 500,
                              ),
                            ),
                          ],
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
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              width: size.width,
              color: AppColors.myWhite,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  constraints: BoxConstraints(
                    minWidth: size.width,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(width: 20),
                      for (var i = 0; i < images.length; i++)
                        GestureDetector(
                          onTap: () {
                            _pageController.jumpToPage(
                              i,
                            );
                            setState(() => currentIndex = i);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                images[i],
                                width: currentIndex == i ? 60 : 50,
                                height: currentIndex == i ? 60 : 50,
                                fit: BoxFit.cover,
                                opacity: currentIndex == i
                                    ? null
                                    : const AlwaysStoppedAnimation(0.5),
                              ),
                            ),
                          ),
                        ),
                      const SizedBox(width: 20),
                    ],
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
