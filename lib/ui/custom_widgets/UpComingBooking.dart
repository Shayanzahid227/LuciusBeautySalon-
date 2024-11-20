import 'package:figma_creation_task/core/models/home_upcooming.dart';
import 'package:flutter/material.dart';

///// upcoming bookings category container for reusaiblity

class UpComingBookingContainer extends StatelessWidget {
  Upcommingservices object_upcomingservices = Upcommingservices();

  // final String title;
  // final String imagePath;
  // final String meddletitle;
  // final String belowtitle;

  UpComingBookingContainer({super.key, required this.object_upcomingservices
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
          margin: const EdgeInsets.all(8),
          height: 120,
          width: 235,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
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
                    scale: 3.5,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "${object_upcomingservices.pageRoute}",
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xfffe78377)),
                  ),
                  Text(
                    "${object_upcomingservices.tittle}",
                    style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xfffe78477)),
                  ),
                  Text(
                    "${object_upcomingservices.timePrice}",
                    style: const TextStyle(
                        fontSize: 13,
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
