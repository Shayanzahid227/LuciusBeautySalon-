//  CategoryContainer Widget to recall it and optimize our code
// ignore: camel_case_types
import 'package:figma_creation_task/core/models/all_services.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AllServicesscontainer extends StatelessWidget {
  // final String title;
  // final String imagePath;
  AllServiceModel object_allServiceModel =
      AllServiceModel(); // call the model here

  AllServicesscontainer({super.key, required this.object_allServiceModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 160,
      width: 173,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: const Color(0xfffffffff),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Padding(padding: EdgeInsets.only(top: 0)),
          Image.asset(
            "${object_allServiceModel.imgUrl}",
            scale: 3.8,
          ),
          Text(
            "${object_allServiceModel.tittle}",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xfffe78477),
            ),
          ),
        ],
      ),
    );
  }
}
