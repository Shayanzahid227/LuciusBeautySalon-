import 'package:figma_creation_task/code_with_asiftaj/packeges/mixture.dart';
import 'package:figma_creation_task/ui/screens/Lucious/authentication%20screen/login_screen.dart';
import 'package:figma_creation_task/ui/screens/Lucious/home%20screen/home_view_model.dart';

import 'package:figma_creation_task/ui/screens/Lucious/splash%20screen.dart';
import 'package:figma_creation_task/ui/screens/root/root_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
          create: (context) => HomeViewModel(),
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
            home: ImportantPackeges()),
      ),
    );
  }
}
