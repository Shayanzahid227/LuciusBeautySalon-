import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/ui/screens/Lucious/home%20screen/1home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CancelBookingScreen_0 extends StatefulWidget {
  const CancelBookingScreen_0({super.key});

  @override
  State<CancelBookingScreen_0> createState() => _CancelBookingScreen_0State();
}

class _CancelBookingScreen_0State extends State<CancelBookingScreen_0> {
  bool isSelected = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void onClick() {
    isSelected = !isSelected;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                child: Image.asset(
                  height: screenheight * 0.7,
                  width: double.infinity,
                  "$staticAssets/details.png",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 565.0),
                child: Container(
                  // height: screenheight * 3.3,
                  height: screenheight * 0.35,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xfffffffff),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 31.0, top: 31),
                        child: Text(
                          "Classic Manicure",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Color(0xfffe78377)),
                        ),
                      ),
                      SizedBox(
                        height: screenheight * 0.01,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 31.0),
                        child: Text(
                          "45 min 56AED",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xfff888888)),
                        ),
                      ),
                      SizedBox(height: screenheight * 0.02),
                      const Padding(
                        padding: EdgeInsets.only(left: 31.0),
                        child: Text(
                          "sun 22 aug 2024 ",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              color: Color(0xfff000000)),
                        ),
                      ),
                      SizedBox(
                        height: screenheight * 0.05,
                      ),
                      Center(
                        child: Container(
                          height: screenheight * 0.08,
                          width: screenwidth * 0.6,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xfffe78377)),
                              borderRadius: BorderRadius.circular(9.0)),
                          child: const Center(
                            child: Text(
                              "Cancel Booking",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xfffe78377)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
