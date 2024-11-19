// upcoming bookings category container for reusaiblity
import 'package:flutter/material.dart';

class UpcomingBookingContainer extends StatelessWidget {
  final String title;
  final String imagePath;
  final String meddletitle;
  final String belowtitle;

  const UpcomingBookingContainer(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.meddletitle,
      required this.belowtitle});

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
                    imagePath,
                    scale: 3.5,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xfffe78377)),
                  ),
                  Text(
                    meddletitle,
                    style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xfffe78477)),
                  ),
                  Text(
                    belowtitle,
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
