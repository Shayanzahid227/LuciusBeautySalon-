import 'package:figma_creation_task/core/models/CartMoel.dart';
import 'package:figma_creation_task/core/models/home_upcooming.dart';
import 'package:figma_creation_task/ui/screens/Lucious/authentication%20screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///// upcoming bookings category container for reusaiblity

// ignore: must_be_immutable
class CartSCreenCustomSCOntainer extends StatelessWidget {
  CartModel object_CartMoel = CartModel();

  // final String title;
  // final String imagePath;
  // final String meddletitle;
  // final String belowtitle;

  CartSCreenCustomSCOntainer({super.key, required this.object_CartMoel
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
          height: 100.h,
          width: 325.w,
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
                    "${object_CartMoel.imgUrl}",
                    scale: 3,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${object_CartMoel.tittle}",
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xfff000000)),
                  ),
                  Text(
                    "${object_CartMoel.pageRoute}",
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xfffe78477)),
                  ),
                  Text(
                    "${object_CartMoel.dateYear}",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xfff888888)),
                  ),
                  Text(
                    "${object_CartMoel.timePrice}",
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
