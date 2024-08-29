import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/form/input_text_field.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class DDayDialog extends StatelessWidget {
  final String name;
  const DDayDialog({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(15),
        height: MediaQuery.of(context).size.height * 0.50,
        child: Column(
					mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
							padding: const EdgeInsets.all(8.0),
							child: Text(
								'${LocaleKeys.d_day_screen_d_dialog_title.tr()}$name?',
								style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
							),
						),
            Text(LocaleKeys.d_day_screen_d_dialog_subtitle.tr(), textAlign: 
						TextAlign.center,),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            InputTextField(
              borderRadius: BorderRadius.circular(10),
              borderColor: AppColors.pale,
              hintText: LocaleKeys.d_day_screen_d_dialog_placeholder.tr(),
              height: MediaQuery.of(context).size.height * 0.2,
							padding: const EdgeInsets.all(15),
              maxLine: 5,
							minLine: 5,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PrimaryButton(
                  borderRadius: BorderRadius.circular(10),
                  fixedSize: Size(MediaQuery.of(context).size.width * 0.3, 30),
                  backgroundColor: AppColors.myDark,
                  text: LocaleKeys.d_day_screen_d_dialog_sendbutton.tr(),
                  onPressed: (context) {
                    // Action pour le premier bouton
                  },
                ),
                PrimaryButton(
                  borderRadius: BorderRadius.circular(10),
                  fixedSize: Size(MediaQuery.of(context).size.width * 0.3, 30),
                  text: LocaleKeys.d_day_screen_d_dialog_cancelbutton.tr(),
                  onPressed: (context) {
                    // Action pour le deuxième bouton
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
