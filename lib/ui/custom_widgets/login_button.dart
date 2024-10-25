import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class categoryLoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color color;

  const categoryLoginButton(
      {Key? key,
      required this.onPressed,
      this.text = "SIGN IN", //change it according to your use
      this.color = const Color(0xfffdd854)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 65.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
            //  rounded corners of container
          ),
          backgroundColor: color,
          iconColor: Color(0xffFDD854), // Button color
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 14.sp, // Set the font size
            fontWeight: FontWeight.w600,
            color: Colors.white, // Text color
          ),
        ),
      ),
    );
  }
}
