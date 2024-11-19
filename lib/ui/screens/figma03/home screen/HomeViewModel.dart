import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/core/models/HomeViewmodel.dart';
import 'package:figma_creation_task/core/other/view_model.dart';

class Homeviewmodel extends BaseViewModel {
  List<FeatureServices> listFeature = [
    FeatureServices(
        tittle: "Classic Predicure",
        timePrice: "45 mnt 39 AED",
        imgUrl: "$staticAssets/nails1.png"),
    FeatureServices(
        tittle: "asjndjenf",
        imgUrl: "$staticAssets/nails1.png",
        timePrice: "dba dhbs")
  ];
}
