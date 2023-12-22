
import 'package:flutter/material.dart';
import 'package:scrollable_clean_calendar/controllers/clean_calendar_controller.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:scrollable_clean_calendar/utils/enums.dart';
import 'package:untitled/colors/primarycolors.dart';

class calender extends StatefulWidget {
  @override
  State<calender> createState() => _calenderState();
}

class _calenderState extends State<calender> {

 late final calendarController;
  /*final calendarController =
  CleanCalendarController(
    minDate: DateTime.now(),
    maxDate: DateTime.now().add(const Duration(days: 365)),
  rangeMode: false,
  //  onRangeSelected: (firstDate, secondDate) {},
    onDayTapped: (date) {
     // Navigator.pop(date.year, context);
      print(date);
    },
    // readOnly: true,
    onPreviousMinDateTapped: (date) {},
    onAfterMaxDateTapped: (date) {},
    weekdayStart: DateTime.monday,
    // initialFocusDate: DateTime(2023, 5),
    // initialDateSelected: DateTime(2022, 3, 15),
    // endDateSelected: DateTime(2022, 3, 20),
  );*/

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: primarycolors.blue,
            elevation: 50.0,
            actions: <Widget>[
            ]),
          body: ScrollableCleanCalendar(
            calendarController: CleanCalendarController(
              minDate: DateTime.now(),
              maxDate: DateTime.now().add(const Duration(days: 365)),
              rangeMode: false,
              onDayTapped: (date) {
                Navigator.pop(context, (date.day.toString()+date.month.toString()+date.year.toString()));
                print(date);
              },
              onPreviousMinDateTapped: (date) {},
              onAfterMaxDateTapped: (date) {},
              weekdayStart: DateTime.monday,
              // initialFocusDate: DateTime(2023, 5),
              // initialDateSelected: DateTime(2022, 3, 15),
              // endDateSelected: DateTime(2022, 3, 20),
            ),
            layout: Layout.BEAUTY,
            calendarCrossAxisSpacing: 0,
          ),
        ),
    );
  }
}