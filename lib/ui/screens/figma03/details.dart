import 'package:figma_creation_task/core/constant/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class detaailScreen_0 extends StatefulWidget {
  const detaailScreen_0({super.key});

  @override
  State<detaailScreen_0> createState() => _detaailScreen_0State();
}

class _detaailScreen_0State extends State<detaailScreen_0> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 505.h,
              width: double.infinity.w,
              decoration: const BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(
                    image: AssetImage("$staticAssets/details.png"),
                    fit: BoxFit.cover),
              ),
            )
          ],
        ),
      ),
    );
  }
}
