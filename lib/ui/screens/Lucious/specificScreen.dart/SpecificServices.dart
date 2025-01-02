import 'package:figma_creation_task/ui/custom_widgets/circularButton.dart';
import 'package:figma_creation_task/ui/custom_widgets/specific.dart';
import 'package:figma_creation_task/ui/screens/Lucious/details/details.dart';

import 'package:figma_creation_task/ui/screens/Lucious/specificScreen.dart/SpecificMVVM.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
//import 'package:provider/provider.dart';

class SpecificServicesScreen_0 extends StatefulWidget {
  const SpecificServicesScreen_0({super.key});

  @override
  State<SpecificServicesScreen_0> createState() =>
      _SpecificServicesScreen_0State();
}

class _SpecificServicesScreen_0State extends State<SpecificServicesScreen_0> {
  bool isSelect = false;

  @override
  void initState() {
    super.initState();
  }

  onClick() {
    isSelect = !isSelect;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpecificServicesviewmodel(),
      child: Consumer<SpecificServicesviewmodel>(
        builder: (context, model, child) => Scaffold(
          backgroundColor: const Color(0xfff9f8f6),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 51),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircularButton(onPressed: () {}, icon: Icons.arrow_back),
                      const SizedBox(
                        width: 21,
                      ),
                      Text(
                        "Nails",
                        style: GoogleFonts.oldStandardTt(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        width: 230,
                      ),
                      CircularButton(onPressed: () {}, icon: Icons.search)
                    ],
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  SafeArea(
                    child: SizedBox(
                      //height: 1000.h,
                      height: MediaQuery.of(context).size.height * 0.9,
                      child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: model.listspecific?.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // Number of items per row
                          crossAxisSpacing:
                              22.0, // Horizontal spacing between itemss
                          mainAxisSpacing:
                              30.0, // Vertical spacing between items
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DetailScreen_0()));
                            },
                            child: SpecificServicesCustomWidget(
                                object_specificServices:
                                    model.listspecific![index]),
                          );
                        },
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
