import 'package:figma_creation_task/core/constant/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BookScreen_0 extends StatefulWidget {
  const BookScreen_0({super.key});

  @override
  State<BookScreen_0> createState() => _BookScreen_0State();
}

class _BookScreen_0State extends State<BookScreen_0> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
              height: 282,
              width: double.infinity,
              decoration: BoxDecoration(
                  //color: Colors.deepOrange
                  image: DecorationImage(
                      image: AssetImage("$staticAssets/Ellipse9.png"),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 15),
              child: Text("Available Time Slots"),
            ),
          ],
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text("Fill Out Your Detaild"),
              Column(
                children: [],
              )
            ],
          ),
        ),
        Row(
          children: [
            Container(
              width: screenwidth * 0.4,
              child: TextField(
                decoration: InputDecoration(
                  hintText: " Name",
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 14.sp, fontWeight: FontWeight.w400),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Color(0xff1e252d)),
                  ),
                ),
              ),
            ),
            Container(
              width: screenwidth * 0.4,
              child: TextField(
                decoration: InputDecoration(
                  hintText: " Emial",
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 14.sp, fontWeight: FontWeight.w400),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Color(0xff1e252d)),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}
