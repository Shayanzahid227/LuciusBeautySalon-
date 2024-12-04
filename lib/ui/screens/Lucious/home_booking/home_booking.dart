import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/ui/custom_widgets/book_screen_button.dart';
import 'package:figma_creation_task/ui/custom_widgets/login_button.dart';
import 'package:figma_creation_task/ui/custom_widgets/simple_textfeild.dart';
import 'package:figma_creation_task/ui/screens/shahab/sigin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBooking_0 extends StatefulWidget {
  const HomeBooking_0({super.key});

  @override
  State<HomeBooking_0> createState() => _BookScreen_0State();
}

class _BookScreen_0State extends State<HomeBooking_0> {
  bool isSelected = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void onClick() {
    isSelected = !isSelected;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: const Color(0xffff9f8f6),
        body: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
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
              ////////////////////     start from here        //////////
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: SizedBox(
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return;
                    },
                  ),
                ),
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
              Padding(
                padding: const EdgeInsets.only(left: 26.0),
                child: Row(
                  children: [
                    Container(
                      height: screenHeight * 0.06,
                      width: screenwidth * 0.4,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: " Name",
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 14.sp, fontWeight: FontWeight.w400),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide:
                                const BorderSide(color: Color(0xff1e252d)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: screenwidth * 0.06),
                    Container(
                      height: screenHeight * 0.06,
                      width: screenwidth * 0.4,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: " Emial",
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 14.sp, fontWeight: FontWeight.w400),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide:
                                const BorderSide(color: Color(0xff1e252d)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              SimpleTextField(hintText: "phone number"),
              SizedBox(height: screenHeight * 0.02),
              SimpleTextField(hintText: "Your Message"),
              SizedBox(height: screenHeight * 0.02),
              SimpleTextField(hintText: "Additional Requrments"),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(color: Colors.yellow[100]),
                      height: screenHeight * 0.05,
                      width: screenwidth * 0.45,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Row(
                          children: [
                            Icon(Icons.card_travel),
                            SizedBox(
                              width: screenwidth * 0.07,
                            ),
                            Text("Salon")
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenwidth * 0.03,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: isSelected
                            ? Color(0xfffe38577)
                            : Color(0xfffffffff),
                      ),
                      height: screenHeight * 0.05,
                      width: screenwidth * 0.45,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Row(
                          children: [
                            Icon(Icons.card_travel),
                            SizedBox(
                              width: screenwidth * 0.07,
                            ),
                            Text("Salon")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text("We only serve house ak 45 km area"),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Container(
                height: screenHeight * 0.05,
                width: screenwidth * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color:
                        isSelected ? Color(0xfffe38577) : Color(0xfffffffff)),
                child: TextButton(onPressed: () {}, child: Text("Proceed")),
              )
            ],
          ),
        ));
  }
}
