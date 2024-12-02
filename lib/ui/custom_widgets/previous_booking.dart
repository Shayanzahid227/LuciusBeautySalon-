import 'package:figma_creation_task/core/models/previous_booking.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///// upcoming bookings category container for reusaiblity

// ignore: must_be_immutable
class PreviousBookingCustomContainer extends StatelessWidget {
  PreviousBookingsModel object_PreviousBooking = PreviousBookingsModel();

  // final String title;
  // final String imagePath;
  // final String meddletitle;
  // final String belowtitle;

  PreviousBookingCustomContainer(
      {super.key, required this.object_PreviousBooking
      // required this.title,
      // required this.imagePath,
      // required this.meddletitle,
      // required this.belowtitle
      });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 4),
          height: 81.h,
          width: 350.w,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            // boxShadow: [
            //   BoxShadow(
            //       color: Colors.black,
            //       offset: const Offset(0.1, 2),
            //       blurRadius: 1.r,
            //       spreadRadius: 0)
            // ],
            color: const Color(0xfffffffff),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    "${object_PreviousBooking.ImgUrl}",
                    scale: 3,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "${object_PreviousBooking.Title}",
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xfff000000)),
                        ),
                        SizedBox(width: 75.w),
                        TextButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.more_vert,
                              size: 20,
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "${object_PreviousBooking.Date}",
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xfff888888)),
                        ),
                        SizedBox(
                          width: 70.w,
                        ),
                        Text(
                          "${object_PreviousBooking.TimeAndPrice}",
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xfffe38577)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
