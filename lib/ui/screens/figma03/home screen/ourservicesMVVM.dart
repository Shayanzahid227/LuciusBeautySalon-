import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/core/models/HomeViewmodel.dart';
import 'package:figma_creation_task/core/other/view_model.dart';

class Homemvvm extends BaseViewModel {
  // writte model name of custom widget like FeaturedServices is model name nad featuredservicescontiner is custyom widget name
  List<OurServices> listOurServices = [
    OurServices(ImgUrl: "$staticAssets/details,png", tittle: "sdjhd")
  ];
}
