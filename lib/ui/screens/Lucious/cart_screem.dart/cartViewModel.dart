import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/core/models/CartMoel.dart';
import 'package:figma_creation_task/core/other/Base_view_model.dart';

class CartViewModel extends BaseViewModel {
  List<CartModel> listCart = [
    CartModel(
        imgUrl: "$staticAssets/details2.png",
        tittle: "Calssic Manicure",
        pageRoute: "home",
        dateYear: "sun 22 aug 2024",
        timePrice: "34 min 45 AED"),
    CartModel(
        imgUrl: "$staticAssets/details2.png",
        tittle: "Calssic Manicure",
        pageRoute: "home",
        dateYear: "sun 22 aug 2024",
        timePrice: "34 min 45 AED"),
  ];
}
