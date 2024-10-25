import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

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
