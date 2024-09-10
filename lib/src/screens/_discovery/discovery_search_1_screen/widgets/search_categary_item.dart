import 'package:featlink_app/src/components/primary_button.dart';
import 'package:flutter/material.dart';

class SearchCategoryItem extends StatelessWidget {
  const SearchCategoryItem({
    required this.buttonText,
    required this.image,
    required this.onPressed,
    super.key,
  });

  final String buttonText;
  final String image;
  final Function(BuildContext) onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: IntrinsicWidth(
            child: PrimaryButton(text: buttonText, onPressed: onPressed),
          ),
        ),
      ],
    );
  }
}
