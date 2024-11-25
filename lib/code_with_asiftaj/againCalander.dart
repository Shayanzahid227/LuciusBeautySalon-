import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class againCalander extends StatefulWidget {
  const againCalander({super.key});

  @override
  State<againCalander> createState() => _againCalanderState();
}

class _againCalanderState extends State<againCalander> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime currentDay, DateTime focusday) {
    setState(() {
      today = currentDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("selected Day" + toString().split("")[0]),
          Container(
              child: TableCalendar(
            focusedDay: today,
            firstDay: DateTime.utc(2010, 1, 1),
            lastDay: DateTime.utc(2030, 12, 30),
            headerStyle:
                HeaderStyle(formatButtonVisible: false, titleCentered: true),
            selectedDayPredicate: (currentDay) => isSameDay(currentDay, today),
            onDaySelected: _onDaySelected,
          ))
        ],
      ),
    );
  }
}
