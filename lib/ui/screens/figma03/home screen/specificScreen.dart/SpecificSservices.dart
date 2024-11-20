import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/ui/screens/figma03/all_services/all_servicess.dart';
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
      backgroundColor: Color(0xffff9f8f6),
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
                children: [
                  Container(
                    height: 300.h,
                    width: 157.w,
                    decoration: BoxDecoration(
                      //color: Colors.pink,
                      color: Color(0xffffffffff),
                      borderRadius: BorderRadiusDirectional.circular(9),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(
                              9), // Space around the inner container
                          height: 140.h,
                          width: 190.w,
                          decoration: const BoxDecoration(
                            color: Colors.amber,
                            borderRadius:
                                BorderRadius.all(Radius.circular(8)), //
                          ),
                          child: Image.asset(
                            "$staticAssets/details.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text("Classic Manicure")),
                            Row(
                              children: [
                                Text("45mnt 39AED"),
                                IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back_sharp))
                              ],
                            )
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );s
  }
}
