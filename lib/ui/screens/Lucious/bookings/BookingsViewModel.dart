import 'dart:core';

import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/core/models/previous_booking.dart';
import 'package:figma_creation_task/core/models/up_cooming_bookings.dart';
import 'package:figma_creation_task/core/other/Base_view_model.dart';

class BookingsViewModel extends BaseViewModel {
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
  List<PreviousBookingsModel> listPrevious = [
    PreviousBookingsModel(
        ImgUrl: "$staticAssets/details2.png",
        Title: "Classic Manicure",
        Date: "sun 22 aug 2023",
        TimeAndPrice: "30 min 24 AED"),
    PreviousBookingsModel(
        ImgUrl: "$staticAssets/details2.png",
        Title: "Classic Manicure",
        Date: "sun 22 aug 2023",
        TimeAndPrice: "30 min 24 AED"),
    PreviousBookingsModel(
        ImgUrl: "$staticAssets/details2.png",
        Title: "Classic Manicure",
        Date: "sun 22 aug 2023",
        TimeAndPrice: "30 min 24 AED"),
  ];
}
