//  CategoryContainer Widget to recall it and optimize our code
// ignore: camel_case_types
import 'package:figma_creation_task/core/models/HomeViewmodel.dart';
import 'package:flutter/material.dart';

class OurServicessContainer extends StatelessWidget {
  OurServices ourservices = OurServices();
  // final String title;
  // final String imagePath;

  OurServicessContainer({required this.ourservices
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
            "${ourservices.ImgUrl}",
            scale: 3.8,
          ),
          Text(
            "${ourservices.tittle}",
            style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
