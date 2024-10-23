import 'package:figma_creation_task/core/constant/string.dart';
import 'package:flutter/material.dart';

class FeaturedCategoryContainer extends StatelessWidget {
  const FeaturedCategoryContainer({super.key});

  // final String tittle;
  // final String imagepath;
  // const FeaturedCategoryContainer({
  //   super.key,
  //   required this.tittle,
  //   required this.imagepath,
  // });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 88,
          width: 267,
          decoration: BoxDecoration(
            color: const Color(0xfffffffff),
            borderRadius: BorderRadius.circular(9),
          ),
          child: const Row(
            children: [
              Positioned(
                top: 511,
                left: 25,
                child: Text(
                  "classic Pedicure",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xfffe78377),
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 69,
          width: 67,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                  image: AssetImage("$staticAssets/face7.png"))),
        )
      ],
    );
  }
}
