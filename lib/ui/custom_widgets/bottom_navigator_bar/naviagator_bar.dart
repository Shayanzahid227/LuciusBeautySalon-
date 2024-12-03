import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavigatorBar extends StatelessWidget {
  String? image;
  VoidCallback? onTap;
  Color? boxColor;
  Color? iconColor;
  BottomNavigatorBar(
      {super.key,
      required this.image,
      required this.onTap,
      required this.boxColor,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: boxColor, borderRadius: BorderRadius.circular(13.r)),
        child: Image.asset(
          image!,
          color: iconColor,
          scale: 4,
        ),
      ),
    );
  }
}
