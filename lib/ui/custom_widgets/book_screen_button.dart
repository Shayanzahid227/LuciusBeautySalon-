import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBookButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final dynamic color;

  const CustomBookButton(
      {super.key,
      required this.onPressed,
      this.text = "Proceed", //change it according to your use
      this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.w,
      height: 56.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(11), //  rounded corners of container
          ),
          // iconColor: Color(0xffFDD854), // Button color
        ),
        child: Row(
          children: [
            Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 14.sp, // Set the font size
                fontWeight: FontWeight.w500,
                color: color, // Text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
