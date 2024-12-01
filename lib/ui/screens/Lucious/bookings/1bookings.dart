import 'package:figma_creation_task/ui/custom_widgets/bookings.dart';
import 'package:figma_creation_task/ui/screens/Lucious/bookings/BookingsViewModel.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookingScreen_ok extends StatefulWidget {
  const BookingScreen_ok({super.key});

  @override
  State<BookingScreen_ok> createState() => _BookingScreen_okState();
}

class _BookingScreen_okState extends State<BookingScreen_ok> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return ChangeNotifierProvider(
      create: (context) => Bookingsviewmodel(),
      child: Consumer<Bookingsviewmodel>(
          builder: (context, model, child) => Scaffold(
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
                      SizedBox(height: screenHeight * 0.025),
                      SizedBox(
                        height: screenHeight * 0.9,
                        child: ListView.builder(
                          itemCount: model.listbookings.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: CustomBookingContainer(
                                      object_bookings:
                                          model.listbookings[index]),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Text(
                        "previous Bookings",
                        style: TextStyle(color: Colors.black),
                      ),
                      // wrong methods
                      // SizedBox(
                      //   height: screenHeight * 0.9,
                      //   child: Column(
                      //     children: [
                      //       GestureDetector(
                      //         onTap: () {
                      //           // for (int x = 0;
                      //           //     x <= model.listbookings.length;
                      //           //     x++) {
                      //           //   index == model.listbookings.length;
                      //           // }
                      //           index == model.listbookings.length;
                      //           setState(() {});
                      //         },
                      //         child: CustomBookingContainer(
                      //             object_bookings: model.listbookings[index]),
                      //       )
                      //     ],
                      //   ),
                      // )
                      // SizedBox(
                      //   height: screenHeight * 0.9,
                      //   child: GridView.builder(
                      //     gridDelegate:
                      //         SliverGridDelegateWithFixedCrossAxisCount(
                      //             // crossAxisCount: model.listbookings.length,
                      //             crossAxisCount: 1,
                      //             crossAxisSpacing: 0,
                      //             mainAxisSpacing: 0),
                      //     itemBuilder: (BuildContext context, int index) {
                      //       return GestureDetector(
                      //         onTap: () {},
                      //         child: CustomBookingContainer(
                      //             object_bookings: model.listbookings[index]),
                      //       );
                      //     },
                      //   ),
                      // )
                    ],
                  ),
                ),
              )),
    );
  }
}
