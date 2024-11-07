import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/ui/custom_widgets/button.dart';
import 'package:figma_creation_task/ui/custom_widgets/social_button.dart';
import 'package:figma_creation_task/ui/custom_widgets/line_with_text.dart';
import 'package:figma_creation_task/ui/custom_widgets/switch_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// after line 157 custom widget start

class Signin_Screen extends StatefulWidget {
  const Signin_Screen({super.key});

  @override
  State<Signin_Screen> createState() => _Signin_ScreenState();
}

class _Signin_ScreenState extends State<Signin_Screen> {
  get imagePaths => null;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 48.h, left: 5.5.w),
            child: Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.arrow_back_sharp,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.04,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.0.w),
            child: Row(
              children: [
                Text(
                  "Sign in ",
                  style: GoogleFonts.inter(
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff20222C)),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, top: 18.h),
            child: Row(
              children: [
                Text(
                  "Give cradential to sign in your account  ",
                  style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff1e252d)),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.0, top: 40.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.0.w),
                  child: Text(
                    "Username or Email  ",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, fontSize: 16.sp),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          const CustomTextField(
            prefixIcon: Icon(Icons.email_outlined),
            hintText: "type useremail, ",
            showVisibilityToggle: false,
          ),
          SizedBox(
            height: screenHeight * 0.04,
          ),
          Padding(
            padding: EdgeInsets.only(left: 29.0.w),
            child: Row(
              children: [
                Text(
                  "Password",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 16.sp),
                ),
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.01),
          const CustomTextField(
            prefixIcon: Icon(Icons.lock_outline_rounded),
            hintText: "Password",
            showVisibilityToggle: true,
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          Padding(
            padding: EdgeInsets.only(left: 28.w),
            child: Row(
              children: [
                Switch_on_off_Button(
                  onChanged: (value) => value,
                ),
                SizedBox(width: screenWidth * 0.03),
                Text(
                  "Remember Me",
                  style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff1E252D)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.0.w),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "LOST YOUR PASSWORD?",
                      style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xfffdd854)),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.03),
          categoryLoginButton(onPressed: () {}),
          SizedBox(height: screenHeight * 0.03),
          const LineWithText(text: "or continue with"),

          //here me
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                  child: GoogleIconButton(
                      onPressed: () {}, imagePath: "$staticAssets/FB.png"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                  child: GoogleIconButton(
                      onPressed: () {}, imagePath: "$staticAssets/Google.png"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                  child: GoogleIconButton(
                      onPressed: () {}, imagePath: "$staticAssets/Vector.png"),
                ),
              ],
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: GoogleFonts.poppins(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "SIGN UP",
                      style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffffdd854)),
                    ))
              ],
            ),
          )
        ],
      )),
    );
  }
}

//////////////////////////
class CustomTextField extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final Widget? prefixIcon;
  final bool showVisibilityToggle;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.obscureText = true,
    this.prefixIcon,
    required this.showVisibilityToggle,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText; // Initialize with the provided value
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText; // Toggle the visibility
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: TextField(
        obscureText: _obscureText, // Use the toggle state
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle:
              GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.w400),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xff1e252d)),
          ),
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.showVisibilityToggle && widget.obscureText
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: const Color(0xff1e252d), // Optional: change color
                  ),
                  onPressed: _togglePasswordVisibility, // Toggle visibility
                )
              : null, // If not obscured, no suffix icon
        ),
      ),
    );
  }
}
//  signbutton

class categoryLoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color color;

  const categoryLoginButton(
      {super.key,
      required this.onPressed,
      this.text = "SIGN IN", //change it according to your use
      this.color = const Color(0xfffdd854)});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 65.h,
      decoration: BoxDecoration(
        color: Colors
            .transparent, // Ensure the container's background is transparent
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Shadow color
            spreadRadius: 5, // Spread radius
            blurRadius: 5, // Blur radius
            offset: const Offset(5, 8), // Shadow offset
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
            //  rounded corners of container
          ),
          backgroundColor: color,
          iconColor: const Color(0xffFDD854), // Button color
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
