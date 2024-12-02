import 'package:figma_creation_task/core/models/up_cooming_bookings.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomBookingContainer extends StatelessWidget {
  BookingsModel object_bookings = BookingsModel();

  CustomBookingContainer({super.key, required this.object_bookings});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      // height: screenheight * 0.099,
      // width: object_bookings.screenwidth * 0.96,
      width: 350.w,
      decoration: BoxDecoration(
        color: const Color(0xfffffffff),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          // Image.asset(
          //   height: 20,
          //   width: 2,
          //   "${object_bookings.ImgUrl}",
          //   fit: BoxFit.contain,
          // ),
          Image.asset(
            // height: screenheight * 0.8,
            // width: screenwidth * 0.2,
            "${object_bookings.ImgUrl}", scale: 5,
          ),
          //SizedBox(width: screenwidth * 0.03),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 17.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      // ignore: unnecessary_brace_in_string_interps
                      "${object_bookings.Title}",
                      style: const TextStyle(
                          color: Color(0xfff000000),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 1,
                ),
                Text(
                  "${object_bookings.Type}",
                  style: const TextStyle(
                      color: Color(0xfffe78377),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 1,
                ),
                // TextButton(onPressed: () {}, child: Text("Salon")),
                Row(
                  children: [
                    Text(
                      "${object_bookings.Date}",
                      style: const TextStyle(
                          color: Color(0xfff888888),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 65.0.w,
                    ),
                    Text(
                      "${object_bookings.TimeAndPrice}",
                      style: const TextStyle(
                          color: Color(0xfffe75388),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
