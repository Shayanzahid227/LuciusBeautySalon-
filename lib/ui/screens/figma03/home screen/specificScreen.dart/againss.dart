import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/ui/screens/figma03/all_services/all_servicess.dart';
import 'package:figma_creation_task/ui/custom_widgets/circularButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecificsServices_q extends StatefulWidget {
  const SpecificsServices_q({super.key});

  @override
  State<SpecificsServices_q> createState() => _SpecificsServicesState();
}

class _SpecificsServicesState extends State<SpecificsServices_q> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffff9f8f6), // Background color
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  CircularButton(
                      onPressed: () {}, icon: Icons.arrow_back_sharp),
                  SizedBox(width: 20.w),
                  Text(
                    "Nails",
                    style: GoogleFonts.poppins(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(width: 230),
                  CircularButton(onPressed: () {}, icon: Icons.search),
                ],
              ),
            ),
            SafeArea(
              child: SizedBox(
                height: screenHeight * 0.9, // Controls the overall grid height
                child: GridView(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns
                    crossAxisSpacing: 10, // Space between columns
                    mainAxisSpacing: 10, // Space between rows
                    childAspectRatio:
                        0.75, // Adjust this to control the size of the grid cells
                  ),
                  children: [
                    Container(
                      decoration: BoxDecoration(color: Colors.yellow),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 90),
                          child: Image.asset(
                            "$staticAssets/details.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
