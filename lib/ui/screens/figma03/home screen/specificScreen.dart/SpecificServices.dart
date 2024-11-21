import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/ui/custom_widgets/circularButton.dart';
import 'package:figma_creation_task/ui/custom_widgets/specific.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecificServicesScreen extends StatefulWidget {
  const SpecificServicesScreen({super.key});

  @override
  State<SpecificServicesScreen> createState() => _SpecificServicesScreenState();
}

class _SpecificServicesScreenState extends State<SpecificServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 51),
          child: Column(
            children: [
              Row(
                children: [
                  CircularButton(onPressed: () {}, icon: Icons.arrow_back),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Nails",
                    style: GoogleFonts.oldStandardTt(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 230,
                  ),
                  CircularButton(onPressed: () {}, icon: Icons.search)
                ],
              ),
              Column(
                children: [
                  SpecificServicesCustomWidget(
                      image: "$staticAssets/details.png",
                      title: "Classic Manicure",
                      price: "59 AED",
                      duration: "45 minss")
                  // Container(
                  //   height: 202,
                  //   width: 155,
                  //   decoration: BoxDecoration(
                  //     color: Color(0xfffffffff),
                  //     borderRadius: BorderRadius.circular(9),
                  //   ),
                  //   child: Column(
                  //     children: [
                  //       const Expanded(
                  //         child: Image(
                  //           image: AssetImage("$staticAssets/details.png"),
                  //           fit: BoxFit.cover,
                  //         ),
                  //       ),
                  //       Row(
                  //         children: [
                  //           TextButton(
                  //               onPressed: () {},
                  //               child: Text(
                  //                 "Classic Manicure",
                  //                 style: GoogleFonts.urbanist(
                  //                     fontSize: 14,
                  //                     fontWeight: FontWeight.w500,
                  //                     color: Color(0xfffe78377)),
                  //               )),
                  //         ],
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.only(
                  //           left: 10.0,
                  //         ),
                  //         child: Row(
                  //           children: [
                  //             Text(
                  //               "45 min 59 AED",
                  //               style: GoogleFonts.urbanist(
                  //                   fontSize: 14,
                  //                   fontWeight: FontWeight.w400,
                  //                   color: Color(0xfff888888)),
                  //             ),
                  //             const SizedBox(
                  //               width: 15,
                  //             ),
                  //             const Icon(
                  //               Icons.arrow_forward,
                  //               size: 22,
                  //               color: Color(0xfffe78377),
                  //             )
                  //           ],
                  //         ),
                  //       )
                  //     ],
                  //   ),
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
