import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/primary_button.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class EditProfileInteretScreen extends StatefulWidget {
  @override
  State<EditProfileInteretScreen> createState() => _EditProfileInteretScreen();
}

// class _EditProfileInteretScreen extends State<EditProfileInteretScreen> {
//   final List<String> _interests = [
//     '90s kid',
//     'Harry Potter',
//     'SoundCloud',
//     'Spa',
//     'Self-care',
//     'Heavy metal',
//     'House parties',
//     'Gin & tonic',
//     'Gymnastics',
//     'Ludo',
//     'Maggi',
//     'Hot yoga',
//     'Biryani',
//     'Meditation',
//     'Sushi',
//     'Spotify',
//     'Hockey',
//     'Basketball',
//     'Slam poetry',
//     'Home workouts',
//     'Theatre',
//     'Café hopping',
//     'Trainers',
//     'Aquarium',
//     'Instagram',
//     'Hot springs',
//     'Walking',
//     'Running',
//     'Travel',
//     'Language exchange',
//     'Films',
//     'Guitarists',
//     'Social development',
//     'Gym',
//     'Social media',
//   ];
//   final Set<String> _selectedInterests = {};

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//           icon: const Icon(Icons.chevron_left, size: 40),
//         ),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
//             child: Align(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 LocaleKeys.edit_profile_interet_screen_interets.tr(),
//                 style: const TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
//             child: Align(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 LocaleKeys.edit_profile_interet_screen_passionate_about.tr(),
//                 style: const TextStyle(
//                   fontSize: 17,
//                 ),
//               ),
//             ),
//           ),
//           const Divider(
//             color: AppColors.pale,
//             thickness: 2.0,
//           ),
//           SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Wrap(
//                 spacing: 8.0,
//                 runSpacing: 8.0,
//                 children: _interests.map((interest) {
//                   final isSelected = _selectedInterests.contains(interest);
//                   return OutlinedButton(
//                     onPressed: () {
//                       setState(() {
//                         if (isSelected) {
//                           _selectedInterests.remove(interest);
//                         } else if (_selectedInterests.length < 5) {
//                           _selectedInterests.add(interest);
//                         }
//                       });
//                     },
//                     style: OutlinedButton.styleFrom(
//                       foregroundColor:
//                           isSelected ? Colors.white : const Color(0xFF505965),
//                       backgroundColor:
//                           isSelected ? AppColors.primary : Colors.white,
//                       textStyle: const TextStyle(
//                         fontSize: 15,
//                       ),
//                       side: const BorderSide(color: Color(0xFFB9BFC8)),
//                     ),
//                     child: Text(interest),
//                   );
//                 }).toList(),
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           const Divider(
//             color: AppColors.pale,
//             thickness: 2.0,
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//             child: PrimaryButton(
//               onPressed: (_) {},
//               fontSize: 19,
//               fontWeight: FontWeight.bold,
//               text: LocaleKeys.edit_profile_interet_screen_apply
//                   .tr(args: ['(${_selectedInterests.length}/5)']),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class _EditProfileInteretScreen extends State<EditProfileInteretScreen> {
  final List<String> _interests = [
    '90s kid',
    'Harry Potter',
    'SoundCloud',
    'Spa',
    'Self-care',
    'Heavy metal',
    'House parties',
    'Gin & tonic',
    'Gymnastics',
    'Ludo',
    'Maggi',
    'Hot yoga',
    'Biryani',
    'Meditation',
    'Sushi',
    'Spotify',
    'Hockey',
    'Basketball',
    'Slam poetry',
    'Home workouts',
    'Theatre',
    'Café hopping',
    'Trainers',
    'Aquarium',
    'Instagram',
    'Hot springs',
    'Walking',
    'Running',
    'Travel',
    'Language exchange',
    'Films',
    'Guitarists',
    'Social development',
    'Gym',
    'Social media',
  ];
  final Set<String> _selectedInterests = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.chevron_left, size: 40),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                LocaleKeys.edit_profile_interet_screen_interets.tr(),
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                LocaleKeys.edit_profile_interet_screen_passionate_about.tr(),
                style: const TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
          const Divider(
            color: AppColors.pale,
            thickness: 2.0,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: _interests.map((interest) {
                    final isSelected = _selectedInterests.contains(interest);
                    return OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (isSelected) {
                            _selectedInterests.remove(interest);
                          } else if (_selectedInterests.length < 5) {
                            _selectedInterests.add(interest);
                          }
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor:
                            isSelected ? Colors.white : const Color(0xFF505965),
                        backgroundColor:
                            isSelected ? AppColors.primary : Colors.white,
                        textStyle: const TextStyle(
                          fontSize: 15,
                        ),
                        side: const BorderSide(color: Color(0xFFB9BFC8)),
                      ),
                      child: Text(interest),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            color: AppColors.pale,
            thickness: 2.0,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: PrimaryButton(
              onPressed: (_) {},
              fontSize: 19,
              fontWeight: FontWeight.bold,
              text: LocaleKeys.edit_profile_interet_screen_apply
                  .tr(args: ['(${_selectedInterests.length}/5)']),
            ),
          ),
        ],
      ),
    );
  }
}
