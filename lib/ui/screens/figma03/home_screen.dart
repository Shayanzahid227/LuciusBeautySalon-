import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/ui/screens/figma01/final_home_screen.dart';
import 'package:flutter/material.dart';

class home_screen_0 extends StatelessWidget {
  const home_screen_0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffff9f8f6),
      appBar: AppBar(
        actions: const [
          Icon(Icons.signal_cellular_alt),
          Icon(Icons.wifi),
          Icon(Icons.battery_3_bar),
          SizedBox(
            height: 40,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                "Good morning",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              ),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Rayna Carder ",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: 180,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                const Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Text(
                            "Exclusive Offers",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Stack(
                  children: [
                    Container(
                      height: 155,
                      width: 342,
                      decoration: BoxDecoration(
                          color: const Color(0xfffd7b99f),
                          borderRadius: BorderRadius.circular(14)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20.0, top: 10),
                        child: Text(
                          'Upto 50%,',
                          style: TextStyle(
                              color: Color(0xfffe78477),
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 20,
                      top: 48,
                      child: Text(
                        "Look more beautiful and \n save more discount",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                    Positioned(
                        left: 16,
                        top: 95,
                        child: TextButton(
                            onPressed: () {},
                            child: Container(
                              height: 40,
                              width: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xfffe78477),
                              ),
                              child: const Center(
                                child: Text(
                                  "Get offer now!",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                              ),
                            ))),
                    Padding(
                      padding: const EdgeInsets.only(left: 223, top: 45),
                      child: Container(
                        height: 110,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(60),
                          color: const Color(0xfffe78477),
                        ),
                        child: Image.asset("$staticAssets/h2.png"),
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0, top: 25),
                  child: Row(
                    children: [
                      Text(
                        "Our services",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CategoryContainer(
                        title: "Nails",
                        imagePath: "$staticAssets/nails1.png",
                      ),
                      CategoryContainer(
                        title: "Hair",
                        imagePath: "$staticAssets/hairs2.png",
                      ),
                      CategoryContainer(
                        title: "Facial",
                        imagePath: "$staticAssets/facial3.png",
                      ),
                      CategoryContainer(
                        title: "Massage",
                        imagePath: "$staticAssets/stone4.png",
                      ),
                      CategoryContainer(
                        title: "Waxing",
                        imagePath: "$staticAssets/leg5.png",
                      ),
                      CategoryContainer(
                        title: "Threading",
                        imagePath: "$staticAssets/flower6.png",
                      ),
                      CategoryContainer(
                        title: "NUltraLucious\n7D hifu",
                        imagePath: "$staticAssets/face7.png",
                      ),
                      CategoryContainer(
                        title: "Lucious slim RF\nCavitation",
                        imagePath: "$staticAssets/dry8.png",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//  CategoryContainer Widget to recall it and optimize our code
class CategoryContainer extends StatelessWidget {
  final String title;
  final String imagePath;

  const CategoryContainer({
    super.key,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 160,
      width: 115,
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
            scale: 4.0,
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
