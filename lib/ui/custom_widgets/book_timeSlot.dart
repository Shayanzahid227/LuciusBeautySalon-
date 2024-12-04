import 'package:figma_creation_task/core/models/book_timeSlot.dart';
import 'package:flutter/material.dart';

class BookTimeslotCustomContainer extends StatefulWidget {
// final String text;
//   final double lineWidth; // New parameter to set line width

//   const CustomLineWithText({
//     super.key,
//     required this.text,
//     this.lineWidth = 50.0, // Default line width
//   });
  //final String? time;
  BookTimeslotModel object_BookTimeSlot = BookTimeslotModel();

  BookTimeslotCustomContainer({super.key, required this.object_BookTimeSlot});

  @override
  State<BookTimeslotCustomContainer> createState() =>
      _BookTimeslotCustomContainerState();
}

class _BookTimeslotCustomContainerState
    extends State<BookTimeslotCustomContainer> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.05,
      width: screenWidth * 0.2,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(5)),
      child: Text(widget.object_BookTimeSlot.time ?? ""),
    );
  }
}
