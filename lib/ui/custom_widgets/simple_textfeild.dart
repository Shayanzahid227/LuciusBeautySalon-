import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SimpleTextField extends StatelessWidget {
  final String hintText;

  const SimpleTextField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: SizedBox(
        height: screenHeight * 0.06,
        width: screenWidth * 0.9,
        child: TextField(
          // keyboardType: TextInputType.numberWithOptions(),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle:
                GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: const BorderSide(color: Color(0xff1e252d)),
            ),
          ),
        ),
      ),
    );
  }
}
