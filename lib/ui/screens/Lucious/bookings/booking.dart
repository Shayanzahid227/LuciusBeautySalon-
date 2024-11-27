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
            Container(
              height: 120,
              // height: screenheight * 0.099,
              width: screenwidth * 0.96,
              decoration: BoxDecoration(
                color: Color(0xfffffffff),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Image.asset(
                    // height: screenheight * 0.8,
                    // width: screenwidth * 0.2,
                    "$staticAssets/details.png",
                  ),
                  //SizedBox(width: screenwidth * 0.03),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Classic Manicure'),
                      Text('salon'),
                      // TextButton(onPressed: () {}, child: Text("Salon")),
                      Text("sat, 22 aug 2022"),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
