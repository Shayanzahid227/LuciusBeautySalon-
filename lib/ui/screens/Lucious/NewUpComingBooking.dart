import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/ui/screens/test/qqqq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeatureServicesCustomWidgett extends StatefulWidget {
  const FeatureServicesCustomWidgett({super.key});

  @override
  State<FeatureServicesCustomWidgett> createState() =>
      _FeatureServicesCustomWidgettState();
}

class _FeatureServicesCustomWidgettState
    extends State<FeatureServicesCustomWidgett> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screeheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          height: 90.h,
          width: 267.w,
          // height: screeheight * 0.099,
          // width: screeheight * 0.28,
          decoration: BoxDecoration(
              color: Color(0xfffffffff),
              borderRadius: BorderRadius.circular(7)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 2.0),
                child: Image(
                  height: screeheight * 0.09,
                  width: screenwidth * 0.2,
                  image: AssetImage("$staticAssets/details.png"),
                  fit: BoxFit.contain,
                ),
              ),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Classic Manicure",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xfffe78377)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 19.0, top: 19),
                    child: Row(
                      children: [
                        const Text(
                          "45 min 59 AED",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward,
                              size: 23,
                              color: Color(0xfffe78377),
                            ))
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
