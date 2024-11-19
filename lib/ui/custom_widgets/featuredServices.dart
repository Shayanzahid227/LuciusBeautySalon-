// featured services category continer
//  CategoryContainer Widget to recall it and optimize our code
// ignore_for_file: must_be_immutable

import 'package:figma_creation_task/core/models/home_eature.dart';
import 'package:flutter/material.dart';

class FeaturedCategoryContainer extends StatelessWidget {
  FeatureServices featureServices = FeatureServices();
  // final String title;
  // final String imagePath;
  // final String belowtitle;

  FeaturedCategoryContainer({super.key, required this.featureServices}
      //{
      //   super.key,
      // required this.title,
      // required this.imagePath,
      // required this.belowtitle}
      );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          height: 130,
          width: 276,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: const Color(0xfffffffff),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Image.asset(
                    "${featureServices.imgUrl}",
                    scale: 3.5,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "${featureServices.tittle}",
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xfffe78377)),
                  ),
                  const SizedBox(height: 13),
                  Text(
                    "  ${featureServices.timePrice}",
                    style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xfff888888)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
