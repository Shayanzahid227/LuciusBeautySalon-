//  CategoryContainer Widget to recall it and optimize our code

import 'package:figma_creation_task/core/models/home_ourServices.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OurServicessContainer extends StatelessWidget {
  // last name after = is class name present in modle folder
  OurServicesModel Object_ourservices = OurServicesModel();

  // final String title;
  // final String imagePath;

  OurServicessContainer({super.key, required this.Object_ourservices
      // super.key,
      // required this.title,
      // required this.imagePath,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 145,
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
            "${Object_ourservices.ImgUrl}",
            scale: 3.8,
          ),
          Text(
            "${Object_ourservices.tittle}",
            style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
