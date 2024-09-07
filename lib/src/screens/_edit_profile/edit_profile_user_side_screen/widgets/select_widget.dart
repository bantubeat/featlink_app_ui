import 'package:choice/choice.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Choise {
  final int id;
  final String? selectedValue;
  final String label;
  final bool isCenter;
  final List<dynamic> choices;

  Choise({
    required this.id,
    required this.choices,
    required this.label,
    required this.selectedValue,
    required this.isCenter,
  });
}

class SelectWidget extends StatelessWidget {
  const SelectWidget({
    required this.item,
    required this.setSelectedValue,
    this.bottomSwichtText,
    super.key,
  });

  final String? bottomSwichtText;

  final Choise item;
  final void Function(String?) setSelectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          item.isCenter ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 2,
          ),
          decoration: BoxDecoration(
            color: AppColors.myGray,
            borderRadius: BorderRadius.circular(3),
          ),
          child: Row(
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
        SizedBox(
          child: PromptedChoice<String>.single(
            clearable: true,
            searchable: true,
            value: item.selectedValue,
            onChanged: setSelectedValue,
            itemCount: item.choices.length,
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
              maxHeightFactor: .7,
              constraints: const BoxConstraints(maxWidth: 300),
            ),
            anchorBuilder: (context, selected) {
              return InkWell(
                onTap: selected,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: item.isCenter
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.delete, // Icône indiquant l'ouverture
                          color: Colors.grey.shade600,
                          size: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        item.selectedValue ?? 'Sélectionnez une option',
                        style: const TextStyle(
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
                ),
              );
            },
            // anchorBuilder:("g"){
            // 	return ChoiceAnchor.defaultLeadingIcon; // Change this to the desired icon for leading anchor
            // }
            // anchorBuilder: ChoiceAnchor.create(
            //   inline: true,
            //   leading: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Icon(
            //       Icons.delete, // Icône indiquant l'ouverture
            //       color: Colors.grey.shade600,
            //       size: 18,
            //     ),
            //   ),
            //   trailing: const Padding(
            //     padding: EdgeInsets.all(8.0),
            //     child: Icon(
            //       Icons
            //           .keyboard_arrow_down_outlined, // Icône indiquant l'ouverture
            //       color: AppColors.primary,
            //       size: 18,
            //     ),
            //   ),
            // ),
            listBuilder:
                ChoiceList.createVirtualized(padding: const EdgeInsets.all(20)),
          ),
        ),
        if (bottomSwichtText != null)
          Align(
            child: Row(
              children: [
                Text(bottomSwichtText!),
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
      ],
    );
  }
}
