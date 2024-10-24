import 'package:figma_creation_task/core/constant/string.dart';
import 'package:flutter/material.dart';

class all_servicess_0 extends StatefulWidget {
  const all_servicess_0({super.key});

  @override
  State<all_servicess_0> createState() => _all_servicess_0State();
}

class _all_servicess_0State extends State<all_servicess_0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 51,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xfffeaeaea),
                    child: TextButton(
                        onPressed: () {},
                        child: const Icon(Icons.arrow_back_sharp)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "All Servicess",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 700,
                child: GridView(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  children: const [
                    AllServicesscontainer(
                        title: "Nails", imagePath: "staticAssets/nails1.png"),
                    AllServicesscontainer(
                        title: "Hairs", imagePath: "staticAssets/hairs2.png"),
                    // AllServicesscontainer(
                    //     title: "Facial", imagePath: "staticAssets/facial3.png"),
                    // AllServicesscontainer(
                    //     title: "Massage",
                    //     imagePath: "staticAssets/massage4.png"),
                    // AllServicesscontainer(
                    //     title: "Waxing", imagePath: "staticAssets/waxing5.png"),
                    // AllServicesscontainer(
                    //     title: "Threading",
                    //     imagePath: "staticAssets/threading6.png"),
                    // AllServicesscontainer(
                    //     title: "Ultralucious\n7d Hifu",
                    //     imagePath: "staticAssets/nails1.png"),
                    // AllServicesscontainer(
                    //     title: "Lucious slim\n RF Cavitation",
                    //     imagePath: "staticAssets/nails1.png"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//  CategoryContainer Widget to recall it and optimize our code
// ignore: camel_case_types
class AllServicesscontainer extends StatelessWidget {
  final String title;
  final String imagePath;

  const AllServicesscontainer({
    super.key,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 160,
      width: 173,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: const Color(0xfffffffff),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Padding(padding: EdgeInsets.only(top: 0)),
          Image.asset(
            imagePath,
            scale: 3.8,
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
