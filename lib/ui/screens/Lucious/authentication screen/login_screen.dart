import 'package:figma_creation_task/core/constant/auth_text_field.dart';
import 'package:figma_creation_task/core/constant/string.dart';

import 'package:figma_creation_task/ui/custom_widgets/text_feild.dart';
import 'package:figma_creation_task/ui/screens/Lucious/authentication%20screen/Register_screen_0.dart';

import 'package:figma_creation_task/ui/screens/root/root_screen.dart';
import 'package:figma_creation_task/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen_0 extends StatefulWidget {
  @override
  State<LoginScreen_0> createState() => _LoginScreen_0State();
}

class _LoginScreen_0State extends State<LoginScreen_0> {
  bool _isPasswordVisiable = false;
  @override
  void initState() {
    super.initState();
  }

  void onClicl() {
    _isPasswordVisiable = !_isPasswordVisiable;
  }

  /////
  ///
  ///   for firebase
  ///
  final _auth = FirebaseAuth.instance;
  final RegExp _emailRegex = RegExp(
    r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
  );

  Future<void> register() async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } catch (e) {
      print("SignIn failed: $e");
    }
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final _fromKey = GlobalKey<FormState>();
  //
  //
  //    if user is akready login then find it indatabase and .....
  //
  void login() {
    _auth
        .signInWithEmailAndPassword(
            email: emailController.text, password: passwordController.text)
        .then((value) {
      Utils().ToastMessage(value.user!.email.toString());
    }).onError((error, stackTrace) {
      Utils().toString();
      //Utils().toString(error.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height;
    // double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,

      ///
      /// App Bar
      ///

      appBar: AppBar(backgroundColor: Colors.white, actions: const [
        ]
      ),

      ///
      /// Start Body
      ///

      body: SingleChildScrollView(
        child: Form(
          key: _fromKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
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
                    //
                    //
                    //  email text form feild
                    //
                    //
                    TextFormField(
                      controller: emailController,
                      onChanged: (value) {
                        emailController.text = value;
                      },
                      decoration: authFieldDecoration.copyWith(
                        hintText: "Enter your emial",
                        prefixIcon: GestureDetector(
                          child: Icon(Icons.alternate_email),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.black)),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                      //
                      //
                      //     email validator
                      //
                      //
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return "please enter your email";
                        } else if (!_emailRegex.hasMatch(value)) {
                          // take correct form of email
                          return "enter your emial e.g abc@gmail.com";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //
                    //
                    //     Password text form fieild
                    //

                    TextFormField(
                      obscureText: _isPasswordVisiable,
                      controller: passwordController,
                      onChanged: (value) {
                        passwordController.text = value;
                      },
                      decoration: authFieldDecoration.copyWith(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.black)),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Password',
                        //
                        //
                        //    password visibality olgic
                        prefixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPasswordVisiable = !_isPasswordVisiable;
                            });
                          },
                          child: Icon(_isPasswordVisiable
                              ? Icons.lock
                              : Icons.lock_open),
                        ),
                        suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isPasswordVisiable = !_isPasswordVisiable;
                              });
                            },
                            child: Icon(_isPasswordVisiable
                                ? Icons.visibility_off
                                : Icons.visibility)),
                      ),
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return "PLease Enter Your Password";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 30.h),

                    ///
                    /// Paasword
                    ///

                    // const CustomTextField(
                    //   hintText: "Password",
                    //   showVisibilityToggle: true,
                    // ),
                    SizedBox(
                      height: 30.h,
                    ),
                    //
                    //
                    //     login button
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 50.h,
                          width: 360.w,
                          decoration: BoxDecoration(
                              color: const Color(0xfffe78377),
                              borderRadius: BorderRadius.circular(9.r)),
                          child: TextButton(
                              //    if all condition satisfy then move RootSCreen
                              onPressed: () {
                                if (_fromKey.currentState!.validate()) {
                                  //   Navigator.of(context).push(MaterialPageRoute(
                                  //       builder: (context) => RootScreen()));

                                  //   setState(() {
                                  //     //  register();
                                  //   });
                                  login();
                                }
                              },
                              child: Center(
                                  child: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ))),
                        )
                      ],
                    ),
                    SizedBox(height: 40.h),
                    //
                    //
                    //    asking for signUp
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
      ),
    );
  }
}
