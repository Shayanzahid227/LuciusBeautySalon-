import 'package:figma_creation_task/core/constant/string.dart';
import 'package:flutter/material.dart';

class againdetails_0 extends StatefulWidget {
  const againdetails_0({super.key});

  @override
  State<againdetails_0> createState() => _againdetails_0State();
}

class _againdetails_0State extends State<againdetails_0> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Image.asset("assets/images/classic_manicure_image.png"),
                Positioned(
                  top: 30,
                  left: 20,
                  child: CircleAvatar(
                      onTap: () {
                        Get.back();
                      },
                      image: Image.asset(
                        backarrowIcon,
                        color: primaryColor,
                      )),
                )
              ],
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: const BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                height: MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Classic Manicure",
                      style: style22.copyWith(
                          color: primaryColor, fontWeight: FontWeight.w600),
                    ),
                    sizedBox10,
                    Text(
                      "45 min 59 AED",
                      style: style16.copyWith(color: greyColor),
                    ),
                    sizedBox20,
                    const Text(
                      "Sat, 22 August 2022",
                      style: style20,
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 30, left: 10, right: 10),
                      child: CustomUnfilledButton(
                          text: "Cancel Booking", onTap: () {}),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
