import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/ui/custom_widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
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
                      color: Color(0xff20222C)),
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
                      color: Color(0xff1e252d)),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.0, top: 50.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.0.w),
                  child: Text(
                    "Username or email  ",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, fontSize: 16.sp),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.02,
          ),
          const CustomTextField(
            prefixIcon: Icon(Icons.email),
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
                      fontWeight: FontWeight.w500, fontSize: 16.sp),
                ),
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          const CustomTextField(
            prefixIcon: Icon(Icons.lock_outline_rounded),
            hintText: "Password",
            showVisibilityToggle: true,
          ),
          SizedBox(
            height: screenHeight * 0.04,
          ),
          categoryLoginButton(onPressed: () {})
        ],
      )),
    );
  }
}

// call it for text feild
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
            borderSide: BorderSide(color: const Color(0xff1e252d)),
          ),
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.obscureText
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
// button

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
      width: 327.w,
      height: 62.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(11), //  rounded corners of container
          ),
          backgroundColor: color,
          iconColor: Color(0xffFDD854), // Button color
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
