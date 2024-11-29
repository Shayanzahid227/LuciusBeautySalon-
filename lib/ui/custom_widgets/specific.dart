import 'package:figma_creation_task/core/models/specifivServices.dart';
import 'package:figma_creation_task/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecificServicesCustomWidget extends StatelessWidget {
  SpecificServicesModel object_specificServices = SpecificServicesModel();
  // final String image;
  // final String title;
  // final String price;
  // final String duration;

  SpecificServicesCustomWidget({super.key, required this.object_specificServices

      // required this.image,
      // required this.title,
      // required this.price,
      // required this.duration,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 200.h,
      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width * 0.5,
      // width: 147.w,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(5),
              //padding: const EdgeInsets.only(left: 3.0, top: 6, right: 3),
              child: Image.asset(
                // width: 300.w,
                "${object_specificServices.imgUrl}",
                fit: BoxFit.cover,
                // fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Classic MAnicure",
                  style: GoogleFonts.urbanist(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xfffe7837),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Text(
                  '${object_specificServices.time}',
                  style: GoogleFonts.urbanist(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xfff888888),
                  ),
                ),
                Text(
                  '${object_specificServices.price}',
                  style: GoogleFonts.urbanist(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xfff888888),
                  ),
                ),
                const SizedBox(
                  width: 16,
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
