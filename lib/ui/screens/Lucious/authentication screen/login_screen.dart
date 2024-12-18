import 'package:figma_creation_task/core/constant/auth_text_field.dart';
import 'package:figma_creation_task/core/constant/string.dart';

import 'package:figma_creation_task/ui/custom_widgets/text_feild.dart';
import 'package:figma_creation_task/ui/screens/Lucious/authentication%20screen/Register_screen_0.dart';

import 'package:figma_creation_task/ui/screens/root/root_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen_0 extends StatefulWidget {
  @override
  State<LoginScreen_0> createState() => _LoginScreen_0State();
}

class _LoginScreen_0State extends State<LoginScreen_0> {
  final _fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height;
    // double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,

      ///
      /// App Bar
      ///

      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: const [
          // Icon(Icons.signal_cellular_alt),
          // Icon(Icons.wifi),
          // Icon(Icons.battery_4_bar_rounded),
        ],
      ),

      ///
      /// Start Body
      ///

      body: SingleChildScrollView(
        child: Form(
          key: _fromKey,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 70.h),
                child: Center(
                  child: SizedBox(
                      height: 200.h,
                      width: 180.w,
                      child: Image.asset(
                        "$staticAssets/loginlogo.png",
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              SizedBox(height: 40.h),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 23.0.w),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 22.sp, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),

                  /////////////////////////////////////     read more using packege     /////////////////////

                  // const ReadMoreText(
                  //   "4. Check for Any Path IssuesIf you've reinstalled the tools and the command is still not working, it may be due to a path issue:On Windows: Ensure that the firebase-tools and flutterfire_cli paths are included in your system’s PATH environment . Check for Any Path IssuesIf you've reinstalled the tools and the command is still not working, it may be due to a path issue:On Windows: Ensure that the firebase-tools.To do this:",
                  //   trimLines: 1,
                  //   trimMode: TrimMode.Line,
                  //   trimCollapsedText: "show more",
                  //   trimExpandedText: "show less",
                  //   moreStyle: TextStyle(
                  //       fontSize: 20,
                  //       fontWeight: FontWeight.w700,
                  //       color: Colors.red),
                  //   lessStyle: TextStyle(
                  //       fontSize: 20,
                  //       fontWeight: FontWeight.w700,
                  //       color: Colors.red),
                  //   style: TextStyle(color: Colors.purple),
                  // ),

                  ///
                  ///
                  ///
                  ///
                  ///
                  const Center(
                    child: Badge(
                      child: Icon(Icons.settings),
                    ),
                  ),

                  ///
                  ///
                  ///

                  const CustomTextField(
                    obscureText: false,
                    hintText: "Email",
                    showVisibilityToggle: false,
                  ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 20),
                  //   child: TextFormField(
                  //     decoration: authFieldDecoration.copyWith(
                  //         fillColor: Colors.purple[100]),
                  //     validator: (value) {
                  //       if (value!.trim().isEmpty) {
                  //         return "please enter email ";
                  //       } else {
                  //         return null;
                  //       }
                  //     },
                  //   ),
                  // )
                  //Icon(FontAwesomeIcons.home),

                  ///     star from here ////

                  // TextFormField(
                  //   decoration: authFieldDecoration.copyWith(
                  //       fillColor: Colors.purple[200],
                  //       filled: true,
                  //       suffixIcon: GestureDetector(
                  //         onTap: () {},
                  //         child: Icon(Icons.visibility),
                  //       )),
                  //   validator: (value) {
                  //     if (value!.trim().isEmpty) {
                  //       return "please enter your email";
                  //     } else {
                  //       return null;
                  //     }
                  //   },
                  // ),

                  // TextFormField(
                  //   decoration: authFieldDecoration.copyWith(
                  //     suffixIcon: GestureDetector(
                  //         onTap: () {}, child: const Icon(Icons.visibility)),
                  //   ),
                  //   validator: (value) {
                  //     if (value!.trim().isEmpty) {
                  //       return "PLease Enter Your Email";
                  //     } else {
                  //       return null;
                  //     }
                  //   },
                  // ),
                  SizedBox(height: 30.h),

                  ///
                  /// Paasword
                  ///

                  const CustomTextField(
                    hintText: "Password",
                    showVisibilityToggle: true,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0.w),
                    child: Row(
                      children: [
                        Container(
                          height: 50.h,
                          width: 360.w,
                          decoration: BoxDecoration(
                              color: const Color(0xfffe78377),
                              borderRadius: BorderRadius.circular(9.r)),
                          child: TextButton(
                              onPressed: () {
                                if (_fromKey.currentState!.validate()) {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => RootScreen()));
                                }
                              },
                              child: Center(
                                  child: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ))),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 40.h),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "New user ?",
                          style: TextStyle(
                              fontSize: 20.sp, fontWeight: FontWeight.w300),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Register_screen_0(),
                              ));
                            },
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xfffef8377)),
                            ))
                      ]),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
