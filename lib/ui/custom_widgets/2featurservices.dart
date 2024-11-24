import 'package:figma_creation_task/core/models/2home_fetuerdServices.dart';
import 'package:figma_creation_task/core/models/home_feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// The Custom Widget that can be reused with different data
class FeatureServiceCustomWidget_2 extends StatelessWidget {
  FeturServicesModel_2 object_feturservices_2 = FeturServicesModel_2();
  // final String title;
  // final String durationAndPrice;
  // final String imageAsset;

  FeatureServiceCustomWidget_2({required this.object_feturservices_2
      // Key? key,
      // required this.title,
      // required this.durationAndPrice,
      // required this.imageAsset,
      }); //: super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screeheight = MediaQuery.of(context).size.height;
    return Container(
      height: 90.h,
      width: 267.w,
      decoration: BoxDecoration(
        color: Color(0xfffffffff),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.0),
            child: Image(
              height: screeheight * 0.09,
              width: screenwidth * 0.2,
              image: AssetImage(
                "${object_feturservices_2.imgUrl}",
              ),
              fit: BoxFit.contain,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${object_feturservices_2.tittle}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xfffe78377),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 19.0, top: 19),
                child: Row(
                  children: [
                    Text(
                      "${object_feturservices_2.timeandprice}",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 30),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward,
                        size: 23,
                        color: Color(0xfffe78377),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
