import 'package:choice/choice.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Choise {
  int id;
  String? selectedValue;
  String label;
  bool isCenter;
  List<dynamic> choices;
  IconData icon;
  final bool? rotate;
  final String? bottomSwichtText;

  Choise({
    required this.id,
    required this.choices,
    required this.label,
    required this.selectedValue,
    required this.isCenter,
    required this.icon,
    this.rotate,
    this.bottomSwichtText,
  });
}

class SelectWidget extends StatelessWidget {
  const SelectWidget({
    required this.item,
    required this.setSelectedValue,
    super.key,
  });

  final Choise item;
  final void Function(String?, int) setSelectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          item.isCenter ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 5,
          ),
          decoration: BoxDecoration(
            border: const Border.symmetric(
              horizontal: BorderSide(
                color: Color.fromRGBO(180, 181, 184, 1),
              ),
            ),
            color: const Color.fromRGBO(212, 216, 222, 1),
            borderRadius: BorderRadius.circular(3),
          ),
          child: Wrap(
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: AppColors.myWhite,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                item.label,
                style: GoogleFonts.inter(
                  color: AppColors.myDark,
                  fontWeight: FontWeight.w800,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
        PromptedChoice<String>.single(
          clearable: true,
          searchable: true,
          value: item.selectedValue,
          onChanged: (val) => setSelectedValue(val, item.id),
          itemCount: item.choices.length,
          leadingBuilder: (context) {
            return Center(
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Text(
                  item.label,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            );
          },
          itemBuilder: (state, i) {
            return RadioListTile(
              value: item.choices[i],
              groupValue: state.single,
              onChanged: (value) {
                state.select(item.choices[i]);
              },
              title: ChoiceText(
                item.choices[i],
                highlight: state.search?.value,
              ),
            );
          },
          promptDelegate: ChoicePrompt.delegatePopupDialog(
            maxHeightFactor: .5,
            constraints: const BoxConstraints(maxWidth: 300),
          ),
          anchorBuilder: (contexts, selected) {
            return Material(
              elevation: 2,
              child: InkWell(
                onTap: selected,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Wrap(
                        alignment: item.isCenter
                            ? WrapAlignment.center
                            : WrapAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: item.rotate != null
                                ? Transform.rotate(
                                    angle: 90 * (3.141592653589793 / 180),
                                    child: Icon(
                                      item.icon, // Icône indiquant l'ouverture
                                      color: Colors.black,
                                      size: 22,
                                    ),
                                  )
                                : Icon(
                                    item.icon, // Icône indiquant l'ouverture
                                    color: Colors.black,
                                    size: 22,
                                  ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            item.selectedValue ??
                                LocaleKeys
                                    .edit_profile_user_side_screen_chose_option
                                    .tr(),
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: AppColors.primary,
                            size: 18,
                          ),
                        ],
                      ),
                      if (item.bottomSwichtText != null)
                        Align(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                item.bottomSwichtText!,
                                style: const TextStyle(
                                  color: Color.fromRGBO(163, 160, 160, 1),
                                ),
                              ),
                              Transform.scale(
                                scale: 0.4,
                                child: Switch(
                                  activeTrackColor: AppColors.bantubeatPrimary,
                                  activeColor: AppColors.myWhite,
                                  value: false,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (item.bottomSwichtText != null)
                        const Divider(
                          height: 2,
                          color: Color.fromRGBO(212, 216, 222, 1),
                        ),
                    ],
                  ),
                ),
              ),
            );
          },
          listBuilder:
              ChoiceList.createVirtualized(padding: const EdgeInsets.all(20)),
        ),
      ],
    );
  }
}
