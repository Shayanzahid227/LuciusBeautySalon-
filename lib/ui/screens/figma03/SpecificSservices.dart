import 'package:figma_creation_task/ui/custom_widgets/all_servicess.dart';
import 'package:figma_creation_task/ui/custom_widgets/circularButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecificsServices extends StatefulWidget {
  const SpecificsServices({super.key});

  @override
  State<SpecificsServices> createState() => _SpecificsServicesState();
}

class _SpecificsServicesState extends State<SpecificsServices> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  CircularButton(
                      onPressed: () {}, icon: Icons.arrow_back_sharp),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Nails",
                    style: GoogleFonts.poppins(
                        fontSize: 20.sp, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    width: 230,
                  ),
                  CircularButton(onPressed: () {}, icon: Icons.search)
                ],
              ),
            ),
            SafeArea(
                child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.9,
              child: GridView(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: [],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
