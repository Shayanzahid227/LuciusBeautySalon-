//************** feature services ******************/
class FeatureServices {
  String? imgUrl;
  String? tittle;
  String? timePrice;

  FeatureServices({this.imgUrl, this.timePrice, this.tittle});
}

//****************  our servicess  ***********
class OurServices {
  String? ImgUrl;
  String? tittle;
  OurServices({required this.ImgUrl, this.tittle});
}

//************ upcooming services  *********
class Upcommingservices {
  String? imgUrl;
  String? tittle;
  String? pageRoute;
  String? timePrice;
  Upcommingservices(
      {required this.imgUrl, this.pageRoute, this.timePrice, this.tittle});
}
