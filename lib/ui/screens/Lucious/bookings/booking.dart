import 'package:figma_creation_task/core/constant/string.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class bookings_0 extends StatefulWidget {
  const bookings_0({super.key});

  @override
  State<bookings_0> createState() => _bookings_0State();
}

class _bookings_0State extends State<bookings_0> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 60),
                  child: Text(
                    "Bookings",
                    style: GoogleFonts.poppins(
                        fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 20),
              child: Row(
                children: [
                  Text(
                    "Upcooming Bookings",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenheight * 0.025),
            // CustomBookingContainer(
            //   screenwidth: screenwidth,
            //   imagePath: null,
            //   Tittle: null,
            //   Type: null,
            //   Date: null,
            // ),
          ],
        ),
      ),
    );
  }
}
