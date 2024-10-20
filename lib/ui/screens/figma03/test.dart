import 'package:flutter/material.dart';

class FeaturedCategoryContainer extends StatelessWidget {
  final String tittle;
  final String imagepath;
  const FeaturedCategoryContainer({
    super.key,
    required this.tittle,
    required this.imagepath,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 88,
          width: 267,
          decoration: BoxDecoration(
            color: Color(0xfffffffff),
            borderRadius: BorderRadius.circular(9),
          ),
          child: Row(
            children: [
              Image.asset(
                imagepath,
                scale: 4.0,
              ),
              Text("classic Pedicure")
            ],
          ),
        ),
      ],
    );
  }
}
