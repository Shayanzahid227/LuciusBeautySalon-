import 'dart:core';

import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/core/models/home_feature.dart';
import 'package:figma_creation_task/core/models/home_ourServices.dart';
import 'package:figma_creation_task/core/models/home_upcooming.dart';
import 'package:figma_creation_task/core/other/view_model.dart';

class Homeviewmodel extends BaseViewModel {
  // bool isSelect = false;
  // onClick() {
  //   isSelect = !isSelect;
  //   notifyListeners();
  // }

// *************  feature services *****************/
  List<FeatureServicesModel_2> listfeatur_2 = [
    FeatureServicesModel_2
    // FeatureServicesModel(
    //   tittle: "Classic Predicure",
    //   timePrice: "45 mnt 39 AED",
    //   imgUrl: "$staticAssets/details.png",
    // ),
    // FeatureServices(
    //     tittle: "asjndjenf",
    //     imgUrl: "$staticAssets/details.png",
    //     timePrice: "dba dhbs"),
    // FeatureServices(
    //     tittle: "Classic Madicure",
    //     imgUrl: "$staticAssets/details.png",
    //     timePrice: "45 min 59AED"),
    // FeatureServices(
    //     tittle: "shfb", imgUrl: "$staticAssets/details.png", timePrice: "hbd"),
    // FeatureServices(
    //     tittle: "shfb", imgUrl: "$staticAssets/details.png", timePrice: "hbd"),
    // FeatureServices(
    //     tittle: "shfb", imgUrl: "$staticAssets/details.png", timePrice: "hbd"),
    // FeatureServices(
    //     tittle: "shfb", imgUrl: "$staticAssets/details.png", timePrice: "hbd"),
  ];
//*****************    our services   *****************/
  List<OurServices> listOurServices = [
    OurServices(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServices(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServices(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServices(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServices(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServices(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServices(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServices(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServices(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServices(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServices(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServices(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServices(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
  ];
  //*****************  upcooming services  *****************/
  List<Upcommingservices> listupcoming = [
    Upcommingservices(
        imgUrl: "$staticAssets/details.png",
        tittle: "hds",
        pageRoute: "eedfe",
        timePrice: "eeee")
  ];
}
