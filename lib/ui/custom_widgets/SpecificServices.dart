//  CategoryContainer Widget to recall it and optimize our code
// ignore: camel_case_types
import 'package:flutter/material.dart';

class Specificservices extends StatelessWidget {
  final String title;
  final String imagePath;
  final String timePrice;

  const Specificservices(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.timePrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 190,
      width: 150,
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
            imagePath,
            scale: 3.8,
          ),
          //
          TextButton(
              onPressed: () {},
              child: Text(
                timePrice,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xfffe78477),
                ),
              )),
          //
          Text(
            title,
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
