import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YourDDayValidAccessTab extends StatelessWidget {
  final List<Map<String, dynamic>> datas;
  const YourDDayValidAccessTab({required this.datas, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(255, 255, 255, 1),
                  Color.fromRGBO(255, 204, 204, 1),
                  Color.fromRGBO(255, 255, 255, 1),
                ],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
                'Ces personnes ont actuellement la même envie que toi',
              ),
            ),
          ),
          const Divider(
            color: Color.fromRGBO(235, 235, 235, 1),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                itemCount: datas.length,
                itemBuilder: (context, index) {
                  var prof = datas[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 4,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  NetworkImage(datas[index]['image']!),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${prof['name']!}, ${prof['age']!} ${prof['city']!}',
                                  style: GoogleFonts.inter(
                                    color: AppColors.myDark,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'intéressé par ton D-Day ',
                                      style: GoogleFonts.inter(
                                        color: AppColors.myGray,
                                        fontSize: 10,
                                      ),
                                    ),
                                    Text(
                                      '❤️',
                                      style: GoogleFonts.inter(
                                        color: Colors.red,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              prof['date']!,
                              style: const TextStyle(
                                color: AppColors.myGray,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Icon(
                              Icons.forum_rounded,
                              color: Color.fromRGBO(226, 152, 152, 1),
                              size: 15,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
