import 'package:figma_creation_task/core/models/all_services.dart';
import 'package:figma_creation_task/core/models/home_upcooming.dart';
import 'package:figma_creation_task/ui/screens/Lucious/NewUpComingBooking.dart';
import 'package:figma_creation_task/ui/screens/Lucious/bookings/booking.dart';
import 'package:figma_creation_task/ui/screens/Lucious/details/AgainDetails.dart';
import 'package:figma_creation_task/ui/screens/Lucious/details/details.dart';
import 'package:figma_creation_task/ui/screens/Lucious/home%20screen/1home_screen.dart';
import 'package:figma_creation_task/ui/screens/Lucious/home%20screen/Home_MVVM.dart';
import 'package:figma_creation_task/ui/screens/Lucious/specificScreen.dart/SpecificServices.dart';
import 'package:figma_creation_task/code_with_asiftaj/button_color_changing.dart';
import 'package:figma_creation_task/code_with_asiftaj/stackConcept/StackConcept.dart';

import 'package:figma_creation_task/ui/screens/Lucious/specificScreen.dart/SpecificMVVM.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Homeviewmodel(),
        ),
        //ChangeNotifierProvider(create: (context) => AllServiceModel()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(394, 852),
        minTextAdapt: true,
        splitScreenMode: true,
        child:
            MaterialApp(debugShowCheckedModeBanner: false, home: bookings_0()),
      ),
    );
  }
}
