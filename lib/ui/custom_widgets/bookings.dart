import 'package:figma_creation_task/core/models/bookings.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBookingContainer extends StatelessWidget {
  BookingsModel object_bookings = BookingsModel();

  CustomBookingContainer({required this.object_bookings});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71,
      // height: screenheight * 0.099,
      // width: object_bookings.screenwidth * 0.96,
      width: 250.w,
      decoration: BoxDecoration(
        color: Color(0xfffffffff),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Image.asset(
            // height: screenheight * 0.8,
            // width: screenwidth * 0.2,
            "${object_bookings.ImgUrl}", scale: 4,
          ),
          //SizedBox(width: screenwidth * 0.03),
          Padding(
            padding: EdgeInsets.only(top: 6, left: 17.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      // ignore: unnecessary_brace_in_string_interps
                      "${object_bookings.Title}",
                      style: TextStyle(
                          color: Color(0xfff000000),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1,
                ),
                Text(
                  "${object_bookings.Type}",
                  style: TextStyle(
                      color: Color(0xfffe78377),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 1,
                ),
                // TextButton(onPressed: () {}, child: Text("Salon")),
                Row(
                  children: [
                    Text(
                      "${object_bookings.Date}",
                      style: TextStyle(
                          color: Color(0xfff888888),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Text(
                      "${object_bookings.TimeAndPrice}",
                      style: TextStyle(
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
