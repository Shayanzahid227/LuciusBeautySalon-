import 'package:figma_creation_task/core/models/specifivServices.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecificServicesCustomWidget extends StatelessWidget {
  SpecificServices object_specificServices = SpecificServices();
  // final String image;
  // final String title;
  // final String price;
  // final String duration;

  SpecificServicesCustomWidget({required this.object_specificServices

      // required this.image,
      // required this.title,
      // required this.price,
      // required this.duration,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 202,
      width: 155,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              "${object_specificServices.imgUrl}",
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "${object_specificServices.tittle}",
                  style: GoogleFonts.urbanist(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xfffe7837),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              children: [
                Text(
                  '${object_specificServices.time}',
                  style: GoogleFonts.urbanist(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xfff888888),
                  ),
                ),
                Text(
                  '${object_specificServices.price}',
                  style: GoogleFonts.urbanist(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xfff888888),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.arrow_forward,
                  size: 22,
                  color: Color(0xfffe7837),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
