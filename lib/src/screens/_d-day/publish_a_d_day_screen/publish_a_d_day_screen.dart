import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/generated/locale_keys.g.dart';
import 'package:featlink_app/src/components/app_navigation_bottom_sheet.dart';
import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class PublishADDayScreen extends StatefulWidget {
  const PublishADDayScreen({super.key});

  @override
  State<PublishADDayScreen> createState() => _PublishADDayScreenState();
}

class _PublishADDayScreenState extends State<PublishADDayScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();

  List<String> months = [
    'Janvier',
    'Février',
    'Mars',
    'Avril',
    'Mai',
    'Juin',
    'Juillet',
    'Août',
    'Septembre',
    'Octobre',
    'Novembre',
    'Décembre',
  ];
  // File? _selectedMedia;
  // final picker = ImagePicker();
  // // final TextEditingController _commentController = TextEditingController();

  // Future<void> _pickImage() async {
  //   final pickedFile = await picker.pickImage(source: ImageSource.gallery);

  //   if (pickedFile != null) {
  //     setState(() {
  //       _selectedMedia = File(pickedFile.path);
  //     });
  //   }
  // }
  // String _selectedMonth = 'Janvier';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.close),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    LocaleKeys.publish_a_d_day_screen_express_your_dday.tr(),
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                LocaleKeys.publish_a_d_day_screen_describe_your_desire.tr(),
                style: GoogleFonts.inter(
                  fontSize: 15,
                  color: const Color.fromRGBO(80, 89, 101, 1),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.all(3),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(2.0),
                  border: Border.all(color: AppColors.myGray),
                ),
                child: TextFormField(
                  minLines: 5,
                  maxLines: 6,
                  decoration: InputDecoration(
                    hintText:
                        LocaleKeys.publish_a_d_day_screen_write_your_dday.tr(),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  LocaleKeys.publish_a_d_day_screen_max_50_characters.tr(),
                  style: GoogleFonts.inter(
                    fontSize: 6,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                LocaleKeys.publish_a_d_day_screen_choose_dday_date.tr(),
                style: GoogleFonts.inter(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: AppColors.primary),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      LocaleKeys.publish_a_d_day_screen_today.tr(),
                      style: GoogleFonts.inter(
                        fontSize: 8,
                        color: const Color.fromRGBO(186, 185, 185, 1),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: AppColors.primary),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            Text(
                              LocaleKeys.publish_a_d_day_screen_calendar.tr(),
                              style: GoogleFonts.inter(
                                fontSize: 8,
                                color: const Color.fromRGBO(186, 185, 185, 1),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(Icons.keyboard_arrow_down_outlined),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.myDark,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        width: 220,
                        child: Column(
                          children: [
                            // DropdownButton<String>(
                            //   value: _selectedMonth,
                            //   // iconSize: 0,
                            //   underline: const Text(
                            //     '',
                            //     style: TextStyle(height: 0),
                            //   ),
                            //   dropdownColor: AppColors.myDark,
                            //   style: const TextStyle(color: Colors.white),
                            //   items: months.map((String month) {
                            //     return DropdownMenuItem<String>(
                            //       value: month,
                            //       child: Text(month),
                            //     );
                            //   }).toList(),
                            //   onChanged: (String? newMonth) {
                            //     setState(() {
                            //       _selectedMonth = newMonth!;
                            //       int monthIndex =
                            //           months.indexOf(_selectedMonth) + 1;
                            //       _focusedDay =
                            //           DateTime(_focusedDay.year, monthIndex);
                            //     });
                            //   },
                            // ),
                            TableCalendar(
                              daysOfWeekHeight: 30,
                              rowHeight: 20,
                              focusedDay: _focusedDay,
                              firstDay: DateTime.utc(2009),
                              lastDay: DateTime.utc(2030, 12, 31),

                              headerStyle: const HeaderStyle(
                                formatButtonShowsNext: false,
                                formatButtonVisible: false,
                                headerPadding: EdgeInsets.zero,
                                titleTextStyle: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              daysOfWeekStyle: const DaysOfWeekStyle(
                                weekdayStyle: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                                weekendStyle: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                              // daysOfWeekVisible: true,
                              selectedDayPredicate: (day) {
                                return isSameDay(_selectedDay, day);
                              },
                              onDaySelected: (selectedDay, focusedDay) {
                                setState(() {
                                  _selectedDay = selectedDay;
                                  _focusedDay = focusedDay;
                                });
                              },
                              calendarStyle: const CalendarStyle(
                                cellMargin: EdgeInsets.all(0),
                                rangeHighlightScale: 0.5,
                                defaultTextStyle: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                                selectedDecoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle,
                                ),
                                weekNumberTextStyle: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFFBFBFBF),
                                ),
                                outsideTextStyle: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFFAEAEAE),
                                ),
                                holidayTextStyle: TextStyle(
                                  fontSize: 10,
                                ),
                                weekendTextStyle: TextStyle(
                                  fontSize: 10,
                                  color: Colors.grey,
                                ),
                                disabledTextStyle: TextStyle(
                                  fontSize: 10,
                                ),
                                todayTextStyle: TextStyle(
                                  fontSize: 10,
                                ),
                                selectedTextStyle: TextStyle(
                                  fontSize: 10,
                                ),
                                todayDecoration: BoxDecoration(
                                  color: Colors.orange,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Text(
                          LocaleKeys
                              .publish_a_d_day_screen_dday_deletion_warning
                              .tr(),
                          style: GoogleFonts.inter(
                            fontSize: 8,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 10,
                        ),
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Text(
                          LocaleKeys.publish_a_d_day_screen_add_image.tr(),
                          style: GoogleFonts.inter(
                            fontSize: 8,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () => {},
                        child: Row(
                          children: [
                            const Icon(
                              Icons.add_photo_alternate_sharp,
                              color: Colors.black,
                              size: 30,
                            ),
                            Text(
                              LocaleKeys.publish_a_d_day_screen_add.tr(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Align(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () => {},
                  child: Text(
                    LocaleKeys.publish_a_d_day_screen_publish.tr(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 105),
            ],
          ),
        ),
      ),
      floatingActionButton: const AppNavigationBottomSheet(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
