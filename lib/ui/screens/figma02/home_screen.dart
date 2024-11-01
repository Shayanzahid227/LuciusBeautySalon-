import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/ui/screens/figma03/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class home_screen_02 extends StatelessWidget {
  const home_screen_02({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: const [
            Icon(Icons.signal_cellular_alt, color: Colors.white),
            Icon(
              Icons.wifi,
              color: Colors.white,
            ),
            Icon(
              Icons.battery_5_bar_rounded,
              color: Colors.white,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 250.h,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10.h)),
                      const CategoryContainer(
                          imagePath: "$staticAssets/Rectangle1.png"),
                      CategoryContainer(
                          imagePath: "$staticAssets/Rectangle2.png")
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 2),
                      child: Container(
                        height: 118.h,
                        width: 238.h,
                        color: Colors.black,
                        // when i add decoration box or child to load image it showing error in output but no error in code
                        child: const Image(
                            image: AssetImage("$staticAssets/tittle.png")),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 45.h),
                      child: Container(
                        height: 28.h,
                        width: 96.h,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(42)),
                        child: Center(
                          child: Text(
                            "GET START",
                            style:
                                TextStyle(fontSize: 14.sp, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Text(
                          "login",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

//  CaategoryContainer Widget to recall it and optimize our code
class CategoryContainer extends StatelessWidget {
  // final String title;
  final String imagePath;
  // final String count;

  const CategoryContainer({
    super.key,
    // required this.title,
    required this.imagePath,
    // required this.count,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(8),
        height: 245.h,
        width: 172.w,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              imagePath,
              scale: 4.0,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
