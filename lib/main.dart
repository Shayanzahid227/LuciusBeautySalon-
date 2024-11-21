import 'package:figma_creation_task/ui/screens/figma03/home%20screen/specificScreen.dart/SpecificSservices.dart';
import 'package:figma_creation_task/ui/screens/figma03/home%20screen/Home_MVVM.dart';
import 'package:figma_creation_task/ui/screens/figma03/home%20screen/specificScreen.dart/againss.dart';

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
        ChangeNotifierProvider(create: (context) => Homeviewmodel()),
      ],
      child: const ScreenUtilInit(
        designSize: Size(394, 852),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
            debugShowCheckedModeBanner: false, home: SpecificsServices_q()),
      ),
    );
  }
}
