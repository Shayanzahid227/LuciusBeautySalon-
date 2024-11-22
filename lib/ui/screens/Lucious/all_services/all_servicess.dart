import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/ui/screens/Lucious/all_services/all_services_MVVM.dart';
import 'package:figma_creation_task/ui/custom_widgets/AllServices.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class all_servicess_0 extends StatefulWidget {
  const all_servicess_0({super.key});

  @override
  State<all_servicess_0> createState() => _all_servicess_0State();
}

class _all_servicess_0State extends State<all_servicess_0> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AllServicesViewModel(),
      child: Consumer<AllServicesViewModel>(
        builder: (context, model, child) => Scaffold(
          backgroundColor: const Color(0xffff9f8f6),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(
                    height: 53,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xfffeaeaea),
                        child: TextButton(
                            onPressed: () {},
                            child: const Icon(Icons.arrow_back_sharp)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "All Servicess",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 51,
                      ),
                    ],
                  ),
                  SafeArea(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.9,
                      child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: model.listallServices.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (BuildContext context, int index) {
                          return AllServicesscontainer(
                              object_allServiceModel:
                                  model.listallServices[index]);
                        },

                        // children: const [
                        //   AllServicesscontainer(
                        //       title: "Nails",
                        //       imagePath: "$staticAssets/nails1.png"),
                        //   AllServicesscontainer(
                        //       title: "Hairs",
                        //       imagePath: "$staticAssets/hairs2.png"),
                        //   AllServicesscontainer(
                        //       title: "Facials",
                        //       imagePath: "$staticAssets/facial3.png"),
                        //   AllServicesscontainer(
                        //       title: "Massage",
                        //       imagePath: "$staticAssets/massage4.png"),
                        //   AllServicesscontainer(
                        //       title: "Waxing",
                        //       imagePath: "$staticAssets/waxing5.png"),
                        //   AllServicesscontainer(
                        //       title: "Threading",
                        //       imagePath: "$staticAssets/threading6.png"),
                        //   AllServicesscontainer(
                        //       title: "Ultralucious\n7D hifu",
                        //       imagePath: "$staticAssets/face7.png"),
                        //   AllServicesscontainer(
                        //       title: "Lucios slim\nRF Cavitations",
                        //       imagePath: "$staticAssets/dry8.png"),
                        //   AllServicesscontainer(
                        //       title: "Nails",
                        //       imagePath: "$staticAssets/nails1.png"),
                        //   AllServicesscontainer(
                        //       title: "Nails",
                        //       imagePath: "$staticAssets/nails1.png"),
                        //   AllServicesscontainer(
                        //       title: "Nails",
                        //       imagePath: "$staticAssets/nails1.png"),
                        //   AllServicesscontainer(
                        //       title: "Nails",
                        //       imagePath: "$staticAssets/nails1.png"),
                        //   AllServicesscontainer(
                        //       title: "Nails",
                        //       imagePath: "$staticAssets/nails1.png"),
                        //   AllServicesscontainer(
                        //       title: "Nails",
                        //       imagePath: "$staticAssets/nails1.png"),
                        //   AllServicesscontainer(
                        //       title: "Nails",
                        //       imagePath: "$staticAssets/nails1.png"),
                        //   AllServicesscontainer(
                        //       title: "Nails", imagePath: "$staticAssets/nails1.png")
                        // ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
