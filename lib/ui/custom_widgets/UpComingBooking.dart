import 'package:figma_creation_task/core/models/home_upcooming.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///// upcoming bookings category container for reusaiblity

// ignore: must_be_immutable
class UpComingBookingCustomContainer extends StatelessWidget {
  UpcommingservicesModel object_upcomingservices = UpcommingservicesModel();

  // final String title;
  // final String imagePath;
  // final String meddletitle;
  // final String belowtitle;

  UpComingBookingCustomContainer(
      {super.key, required this.object_upcomingservices
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
          height: 74.h,
          width: 225.w,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  offset: const Offset(0.1, 2),
                  blurRadius: 1.r,
                  spreadRadius: 0)
            ],
            color: const Color(0xfffffffff),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Image.asset(
                    "${object_upcomingservices.imgUrl}",
                    scale: 3,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${object_upcomingservices.tittle}",
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xfff000000)),
                  ),
                  Text(
                    "${object_upcomingservices.pageRoute}",
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xfffe78477)),
                  ),
                  Text(
                    "${object_upcomingservices.timePrice}",
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xfff888888)),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
