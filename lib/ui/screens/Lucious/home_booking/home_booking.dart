import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/core/constant/text_style.dart';
import 'package:figma_creation_task/ui/custom_widgets/book_timeSlot.dart';

import 'package:figma_creation_task/ui/custom_widgets/circularButton.dart';
import 'package:figma_creation_task/ui/custom_widgets/simple_textfeild.dart';

import 'package:figma_creation_task/ui/screens/Lucious/home_booking/home_bookingVM.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeBooking_0 extends StatefulWidget {
  const HomeBooking_0({super.key});

  @override
  State<HomeBooking_0> createState() => _HomeBooking_0State();
}

class _HomeBooking_0State extends State<HomeBooking_0> {
  // for selecting new day in calendar
  DateTime today = DateTime.now();
  //void onDaySelected(DateTime currentDay, DateTime focusday) {
  void _onDaySelected(DateTime currentDay, DateTime focusday) {
    setState(() {
      today = currentDay;
    });
  }

  // for changing color
  bool isSelected = false;
  bool timeSelected = false; // for time slot
  @override
  void initState() {
    super.initState();
  }

  void onClick() {
    isSelected = !isSelected;
    setState(() {});
  }

// for time slot
  void onTap() {
    timeSelected = !timeSelected;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return ChangeNotifierProvider(
      create: (context) => HomeBookingVeiwModel(),
      child: Consumer<HomeBookingVeiwModel>(
          builder: (context, model, child) => Scaffold(
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Row(
                            children: [
                              CircularButton(
                                  onPressed: () {}, icon: Icons.arrow_back),
                              SizedBox(
                                width: screenwidth * 0.02,
                              ),
                              const Text("Book Appointment")
                            ],
                          ),
                          Container(
                            height: 249,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                //color: Colors.deepOrange
                                image: DecorationImage(
                                    image: AssetImage(
                                        "$staticAssets/Ellipse9.png"),
                                    fit: BoxFit.cover)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: SizedBox(
                              height: screenHeight * 0.32,
                              width: double.infinity,
                              child: TableCalendar(
                                calendarFormat: CalendarFormat.week,
                                focusedDay: DateTime.now(),
                                firstDay: DateTime.utc(2026, 1, 1),
                                lastDay: DateTime.utc(2030, 12, 31),

                                // This will prevent the color change on click
                                selectedDayPredicate: (currentDay) =>
                                    isSameDay(currentDay, today),
                                onDaySelected:
                                    _onDaySelected, // Always returns false, so no day is selected

                                headerStyle: const HeaderStyle(
                                  formatButtonVisible: false,
                                  titleCentered: true,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.0,
                            ),
                            child: Text("Available Time Slots"),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          //onClick();
                          onTap();
                        },
                        child: SizedBox(
                          height: 111,
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                            ),
                            itemCount: model.listTimeSlot.length,
                            itemBuilder: (BuildContext context, int index) {
                              return BookTimeslotCustomContainer(
                                  object_BookTimeSlot:
                                      model.listTimeSlot[index]);
                            },
                          ),
                          // child: ListView.builder(
                          //   scrollDirection: Axis.horizontal,
                          //   shrinkWrap: true,
                          //   itemCount: 4,
                          //   itemBuilder: (BuildContext context, int index) {
                          //     return BookTimeslotCustomContainer(
                          //         object_BookTimeSlot: model.listTimeSlot[index]);
                          //   },
                          // ),
                        ),
                      ),
                      ////////////////////     start from here        //////////
                      const Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: SizedBox(
                            // height: screenHeight * 0.5,
                            // child: GridView.builder(
                            //   gridDelegate:
                            //       const SliverGridDelegateWithFixedCrossAxisCount(
                            //     crossAxisCount: 4,
                            //   ),
                            //   itemCount: model.listTimeSlot.length,
                            //   itemBuilder: (BuildContext context, int index) {
                            //     return GestureDetector(
                            //       onTap: () {},
                            //       child: BookTimeslotCustomContainer(
                            //           object_BookTimeSlot:
                            //               model.listTimeSlot[index]),
                            //     );
                            //   },
                            // ),

                            // child: ListView.builder(
                            //   shrinkWrap: true,
                            //   itemCount: 4,
                            //   itemBuilder: (BuildContext context, int index) {
                            //     return GestureDetector(
                            //         onTap: () {},
                            //         child: BookTimeslotCustomContainer(
                            //             object_BookTimeSlot:
                            //                 model.listTimeSlot[index]));
                            //   },
                            // ),
                            ),
                      ),
                      const SizedBox(height: 30),
                      const Padding(
                        padding: EdgeInsets.only(left: 16.0),
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
                            SizedBox(
                              height: screenHeight * 0.06,
                              width: screenwidth * 0.4,
                              child: TextField(
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  hintText: " Name",
                                  hintStyle: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                        color: Color(0xff1e252d)),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: screenwidth * 0.06),
                            SizedBox(
                              height: screenHeight * 0.06,
                              width: screenwidth * 0.4,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: " Emial",
                                  hintStyle: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                        color: Color(0xff1e252d)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      const SimpleTextField(hintText: "phone number"),
                      SizedBox(height: screenHeight * 0.02),
                      const SimpleTextField(hintText: "Your Message"),
                      SizedBox(height: screenHeight * 0.02),
                      const SimpleTextField(hintText: "Additional Requrments"),
                      SizedBox(
                        height: screenHeight * 0.03,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                onClick();
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: isSelected == false
                                      ? const Color(0xfffe38577)
                                      : const Color(0xfffffffff),
                                ),
                                height: screenHeight * 0.05,
                                width: screenwidth * 0.45,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.card_travel,
                                          color: isSelected == false
                                              ? Colors.white
                                              : Colors.black),
                                      SizedBox(
                                        width: screenwidth * 0.07,
                                      ),
                                      Text(
                                        "Home",
                                        style: style16.copyWith(
                                            color: isSelected == false
                                                ? Colors.white
                                                : Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenwidth * 0.03,
                            ),
                            GestureDetector(
                              onTap: () {
                                onClick();
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: isSelected == true
                                      ? const Color(0xfffe38577)
                                      : const Color(0xfffffffff),
                                ),
                                height: screenHeight * 0.05,
                                width: screenwidth * 0.45,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 40.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.card_travel,
                                          color: isSelected == true
                                              ? Colors.white
                                              : Colors.black),
                                      SizedBox(
                                        width: screenwidth * 0.07,
                                      ),
                                      Text(
                                        "Salon",
                                        style: style16.copyWith(
                                            color: isSelected == true
                                                ? Colors.white
                                                : Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text("We only serve house ak 45 km area"),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Container(
                        height: screenHeight * 0.05,
                        width: screenwidth * 0.8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: const Color(0xfffe38577)),
                        child: TextButton(
                            onPressed: () {}, child: const Text("Proceed")),
                      )
                    ],
                  ),
                ),
              )),
    );
  }
}
