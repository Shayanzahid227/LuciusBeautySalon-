import 'package:figma_creation_task/code_with_asiftaj/calander.dart';
import 'package:figma_creation_task/ui/screens/Lucious/authentication%20screen/login_screen.dart';
import 'package:figma_creation_task/ui/screens/Lucious/bookings/1bookings.dart';
import 'package:figma_creation_task/ui/screens/Lucious/bookings/booking.dart';
import 'package:figma_creation_task/ui/screens/Lucious/details/AgainDetails.dart';
import 'package:figma_creation_task/ui/screens/Lucious/details/details.dart';
import 'package:figma_creation_task/ui/screens/Lucious/home%20screen/1home_screen.dart';
import 'package:figma_creation_task/ui/screens/Lucious/home%20screen/Home_MVVM.dart';
import 'package:figma_creation_task/ui/screens/Lucious/profileScreen/ProfileScreen.dart';
import 'package:figma_creation_task/ui/screens/Lucious/profile_screen.dart';
import 'package:figma_creation_task/ui/screens/Lucious/specificScreen.dart/SpecificServices.dart';
import 'package:figma_creation_task/ui/screens/Lucious/splash%20screen.dart';
import 'package:figma_creation_task/ui/screens/Cancelbooking.dart';
import 'package:figma_creation_task/ui/screens/figma02/home_screen.dart';
import 'package:figma_creation_task/ui/screens/root/AgainRootScreen.dart';
import 'package:figma_creation_task/ui/screens/root/root_screen.dart';
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
      // if multiple screen have common view model then we use veiw model in main .dart
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
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(scaffoldBackgroundColor: const Color(0xffFAF8F6)),
            home: RootScreen()),
      ),
    );
  }
}
