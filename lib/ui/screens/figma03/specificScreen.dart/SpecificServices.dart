import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/ui/custom_widgets/circularButton.dart';
import 'package:figma_creation_task/ui/custom_widgets/specific.dart';
import 'package:figma_creation_task/ui/screens/figma03/home%20screen/Home_MVVM.dart';
import 'package:figma_creation_task/ui/screens/figma03/specificScreen.dart/SpecificMVVM.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SpecificServicesScreen extends StatefulWidget {
  const SpecificServicesScreen({super.key});

  @override
  State<SpecificServicesScreen> createState() => _SpecificServicesScreenState();
}

class _SpecificServicesScreenState extends State<SpecificServicesScreen> {
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
    return Consumer<SpecificServicesviewmodel>(
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 51),
            child: Column(
              children: [
                Row(
                  children: [
                    CircularButton(onPressed: () {}, icon: Icons.arrow_back),
                    const SizedBox(
                      width: 20,
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
                SizedBox(
                  height: 17,
                ),
                SafeArea(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.9,
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: model.listspecific?.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (BuildContext context, int index) {
                        return SpecificServicesCustomWidget(
                            object_specificServices:
                                model.listspecific![index]);
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
