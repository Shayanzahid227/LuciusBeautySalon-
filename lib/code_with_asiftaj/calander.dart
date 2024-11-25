import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calander extends StatefulWidget {
  const Calander({super.key});

  @override
  State<Calander> createState() => _CalanderState();
}

class _CalanderState extends State<Calander> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime currentday, DateTime focuseDay) {
    setState(() {
      today = currentday;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.purple[100]),
              child: Center(
                  child:
                      Text("Selected Date = " + today.toString().split("")[0])),
            ),
          ),
          //  Text("selected date = " + today.toString().split("")[0]),
          Container(
              //child: Text("Selected date = " + today.toString().split(" ")[0]),

              // focus day mean as u open calander it showing current day
              child: TableCalendar(
            focusedDay: today,
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            // for changes in calander
            headerStyle:
                HeaderStyle(formatButtonVisible: false, titleCentered: true),
            availableGestures: AvailableGestures.all,
            selectedDayPredicate: (currentday) => isSameDay(currentday, today),
            onDaySelected: _onDaySelected,
          ))
        ],
      ),
    );
  }
}
