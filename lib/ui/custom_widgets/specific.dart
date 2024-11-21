import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecificServicesCustomWidget extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final String duration;

  const SpecificServicesCustomWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 202,
      width: 155,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  title,
                  style: GoogleFonts.urbanist(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xfffe7837),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              children: [
                Text(
                  '$duration $price',
                  style: GoogleFonts.urbanist(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xfff888888),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.arrow_forward,
                  size: 22,
                  color: Color(0xfffe7837),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
