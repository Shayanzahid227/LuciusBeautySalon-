import 'package:figma_creation_task/core/constant/auth_text_field.dart';
import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/core/constant/text_style.dart';
import 'package:figma_creation_task/ui/custom_widgets/text_feild.dart';
import 'package:figma_creation_task/ui/screens/Lucious/authentication%20screen/Register_screen_0.dart';

import 'package:figma_creation_task/ui/screens/root/root_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class login_screen_0 extends StatelessWidget {
  const login_screen_0({super.key});

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
                    style:
                        TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),

                ///
                /// Email Address
                ///

                // TextFormField(
                //   decoration: authFieldDecoration.copyWith(
                //       fillColor: Colors.black,
                //       hintText: 'User Name',
                //       hintStyle: style16.copyWith(color: Colors.white),
                //       enabledBorder: OutlineInputBorder(
                //           borderSide: BorderSide(color: Colors.red, width: 2))),
                // ),

                ///
                /// Email Address
                ///
                const CustomTextField(
                  obscureText: false,
                  hintText: "Email",
                  showVisibilityToggle: false,
                ),

                TextFormField(
                  decoration: authFieldDecoration.copyWith(
                    suffixIcon: GestureDetector(
                        onTap: () {}, child: Icon(Icons.visibility)),
                  ),
                ),
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
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => RootScreen()));
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
                              builder: (context) => const Register_screen_0(),
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
    );
  }
}
