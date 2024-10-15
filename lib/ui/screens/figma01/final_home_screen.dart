import 'package:figma_creation_task/core/constant/string.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class home_screen_task extends StatelessWidget {
  const home_screen_task({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.signal_cellular_alt),
          Icon(Icons.wifi),
          Icon(Icons.battery_3_bar_rounded),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    "Categories ",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search_rounded,
                      size: 30,
                    ),
                    hintText: " Search Categories ",
                    hintStyle:
                        const TextStyle(fontSize: 20, color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0))),
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Text(
                    "Popular Categories ",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                  height: 150,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: const [
                      // calling container (category container)
                      CategoryContainer(
                          title: "Food",
                          imagePath: "$staticAssets/Frame.png",
                          count: "10"),

                      CategoryContainer(
                          title: "toyes & Games",
                          imagePath: "$staticAssets/Frame2.png",
                          count: "4"),
                      CategoryContainer(
                          title: "Sports",
                          imagePath: "$staticAssets/Frame3.png",
                          count: "7"),
                    ],
                  )),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Text(
                    "All Categories",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ],
              ),
              GridView(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                children: const [
                  CategoryContainer(
                      title: "Car Services",
                      imagePath: "$staticAssets/Frame7.png",
                      count: "5"),
                  CategoryContainer(
                      title: "Beauty",
                      imagePath: "$staticAssets/Frame8.png",
                      count: "12"),
                  CategoryContainer(
                      title: "Clothings",
                      imagePath: "$staticAssets/Frame9.png",
                      count: "18"),
                  CategoryContainer(
                      title: "Car Services",
                      imagePath: "$staticAssets/Frame7.png",
                      count: "5"),
                  CategoryContainer(
                      title: "Beauty",
                      imagePath: "$staticAssets/Frame8.png",
                      count: "12"),
                  CategoryContainer(
                      title: "Clothings",
                      imagePath: "$staticAssets/Frame9.png",
                      count: "18"),
                  CategoryContainer(
                      title: "Car Services",
                      imagePath: "$staticAssets/Frame7.png",
                      count: "5"),
                  CategoryContainer(
                      title: "Beauty",
                      imagePath: "$staticAssets/Frame8.png",
                      count: "12"),
                  CategoryContainer(
                      title: "Clothings",
                      imagePath: "$staticAssets/Frame9.png",
                      count: "18"),
                  CategoryContainer(
                      title: "Car Services",
                      imagePath: "$staticAssets/Frame7.png",
                      count: "5"),
                  CategoryContainer(
                      title: "Beauty",
                      imagePath: "$staticAssets/Frame8.png",
                      count: "12"),
                  CategoryContainer(
                      title: "Clothings",
                      imagePath: "$staticAssets/Frame9.png",
                      count: "18"),
                  CategoryContainer(
                      title: "Car Services",
                      imagePath: "$staticAssets/Frame7.png",
                      count: "5"),
                  CategoryContainer(
                      title: "Beauty",
                      imagePath: "$staticAssets/Frame8.png",
                      count: "12"),
                  CategoryContainer(
                      title: "Clothings",
                      imagePath: "$staticAssets/Frame9.png",
                      count: "18"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

////
//  CategoryContainer Widget to recall it and optimize our code
class CategoryContainer extends StatelessWidget {
  final String title;
  final String imagePath;
  final String count;

  const CategoryContainer({
    super.key,
    required this.title,
    required this.imagePath,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 160,
      width: 115,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: const Color(0xffffbf1ff),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Padding(padding: EdgeInsets.only(top: 0)),
          Align(
            alignment: Alignment.topRight,
            child: CircleAvatar(
              radius: 14,
              backgroundColor: const Color(0xfff9d00de),
              child: Text(
                count,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
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
