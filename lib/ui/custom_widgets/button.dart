import 'package:figma_creation_task/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class categoryLoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const categoryLoginButton({
    Key? key,
    required this.onPressed,
    this.text = "SIGN IN", //change it according to your use
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 14.sp, // Set the font size
            fontWeight: FontWeight.w500,
            color: Colors.white, // Text color
          ),
        ),
      ),
    );
  }
}
