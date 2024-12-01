import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/core/models/bookings.dart';
import 'package:figma_creation_task/core/other/Base_view_model.dart';

class Bookingsviewmodel extends BaseViewModel {
  List<BookingsModel> listbookings = [
    BookingsModel(
        ImgUrl: "$staticAssets/details2.png",
        Title: "CLassic MAnicur",
        Type: "salonn",
        Date: "sun 22 aug 2024",
        TimeAndPrice: "45 min 56 AED"),
    BookingsModel(
        ImgUrl: "$staticAssets/details2.png",
        Title: "CLassic MAnicur",
        Type: "salonn",
        Date: "sun 22 aug 2024",
        TimeAndPrice: "45 min 56 AED"),
  ];
}
