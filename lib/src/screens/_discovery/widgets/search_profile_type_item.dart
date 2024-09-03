import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class SearchProfileTypeItem extends StatelessWidget {
  const SearchProfileTypeItem({
    required this.image,
    required this.lable,
    this.onTap,
    super.key,
  });

  final String image;
  final String lable;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 200,
        width: (MediaQuery.of(context).size.width / 2) - 40,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                AppColors.myDark,
              ],
            ),
          ),
          child: Center(
            child: Text(
              lable,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
