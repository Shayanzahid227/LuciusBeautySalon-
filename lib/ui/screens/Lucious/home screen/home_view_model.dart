import 'dart:core';

import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/core/models/2home_fetuerdServices.dart';
import 'package:figma_creation_task/core/models/home_ourServices.dart';
import 'package:figma_creation_task/core/models/home_upcooming.dart';
import 'package:figma_creation_task/core/other/Base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  // bool isSelect = false;
  // onClick() {
  //   isSelect = !isSelect;
  //   notifyListeners();
  // }

// *************  feature services *****************/
  List<FeatureServicesModel_2> listfeatur_2 = [
    FeatureServicesModel_2(
        imgUrl: "$staticAssets/details.png",
        tittle: "Classic Manicure",
        timeandprice: "56 min 73 AED"),
    FeatureServicesModel_2(
        imgUrl: "$staticAssets/details.png",
        tittle: "ClassicManicure",
        timeandprice: "56 min 67 AED"),
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
  List<OurServicesModel> listOurServices = [
    OurServicesModel(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServicesModel(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServicesModel(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServicesModel(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServicesModel(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServicesModel(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServicesModel(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServicesModel(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServicesModel(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServicesModel(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServicesModel(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServicesModel(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
    OurServicesModel(ImgUrl: "$staticAssets/nails1.png", tittle: "Nails"),
  ];

  //*****************  upcooming services  *****************/
  List<UpcommingServicesModel> listupcoming = [
    UpcommingServicesModel(
        imgUrl: "$staticAssets/details.png",
        tittle: "Clasic Manicure",
        pageRoute: "Home",
        timePrice: "sat 22 aug 2024"),
    UpcommingServicesModel(
        imgUrl: "$staticAssets/details.png",
        tittle: "Classic Padicure",
        pageRoute: "salon",
        timePrice: "sun 23 aug 2024"),
    UpcommingServicesModel(
        imgUrl: "$staticAssets/details.png",
        tittle: "Clasic Manicure",
        pageRoute: "Home",
        timePrice: "sat 22 aug 2024"),
    UpcommingServicesModel(
        imgUrl: "$staticAssets/details.png",
        tittle: "Classic Padicure",
        pageRoute: "salon",
        timePrice: "sun 23 aug 2024"),
    UpcommingServicesModel(
        imgUrl: "$staticAssets/details.png",
        tittle: "Clasic Manicure",
        pageRoute: "Home",
        timePrice: "sat 22 aug 2024"),
    UpcommingServicesModel(
        imgUrl: "$staticAssets/details.png",
        tittle: "Classic Padicure",
        pageRoute: "salon",
        timePrice: "sun 23 aug 2024")
  ];
}
