import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class CreateProfileDialog extends StatelessWidget {
  final String title1;
  final String title2;
  final String? subTitle;
  final String? description;
  final String buttonText;
  final void Function(BuildContext) buttonAction;

  const CreateProfileDialog({
    required this.title1,
    required this.title2,
    required this.buttonText, required this.buttonAction, this.subTitle,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title1.toUpperCase(),style: const TextStyle(color: AppColors.myDark,fontSize: 20,fontWeight: FontWeight.bold),),
          const SizedBox(height: 20,),
          Text(title2,style: const TextStyle(color: AppColors.myDark,fontSize: 19,fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),
          Text('$description'),
        ],
      ),

      actions: [
        PrimaryButton(onPressed: buttonAction, text: buttonText),
      ],
      actionsAlignment: MainAxisAlignment.center,
      actionsPadding: const EdgeInsets.only(),
    );
  }
}
