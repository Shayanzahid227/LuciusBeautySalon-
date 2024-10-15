import 'package:figma_creation_task/core/constant/string.dart';
import 'package:flutter/material.dart';

class home_screen_02 extends StatelessWidget {
  const home_screen_02({super.key});

  @override
  Widget build(BuildContext context) {
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
                  height: 250,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Padding(padding: EdgeInsets.only(top: 10)),
                      CategoryContainer(
                          imagePath: "$staticAssets/Rectangle1.png"),
                      CategoryContainer(
                          imagePath: "$staticAssets/Rectangle2.png")
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 2),
                      child: Container(
                        height: 118,
                        width: 238,
                        color: Colors.black,
                        // when i add decoration box or child to load image it showing error in output but no error in code
                        child: const Image(
                            image: AssetImage("$staticAssets/tittle.png")),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 45),
                      child: Container(
                        height: 28,
                        width: 96,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(42)),
                        child: const Center(
                          child: Text(
                            "GET START",
                            style: TextStyle(fontSize: 14, color: Colors.white),
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
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(8),
        height: 245,
        width: 172,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
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
