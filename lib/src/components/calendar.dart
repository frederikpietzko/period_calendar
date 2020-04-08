import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../controllers/calendar_bloc.dart';

import '../components/information_setter.dart';

class Calendar extends StatelessWidget {
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Container(
      child: TableCalendar(
        locale: 'de_DE',
        calendarController: CalendarController(),
        calendarStyle: CalendarStyle(
          selectedColor: Colors.pinkAccent,
          todayColor: Colors.pink[200],
        ),
        availableCalendarFormats: <CalendarFormat, String>{
          CalendarFormat.month: "1 Monat",
          CalendarFormat.twoWeeks: "2 Wochen",
          CalendarFormat.week: "1 Woche"
        },
        onDayLongPressed: (dateTime, events) {
          bloc.setSelecedDate(dateTime);
          Scaffold.of(context).showBottomSheet((context) {
            return InformatinoSetter();
          });
        },
      ),
    );
  }
}
