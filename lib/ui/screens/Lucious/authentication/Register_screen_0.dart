import 'package:figma_creation_task/core/constant/auth_text_field.dart';
import 'package:figma_creation_task/core/constant/string.dart';

import 'package:figma_creation_task/ui/screens/Lucious/authentication/login_screen.dart';
import 'package:figma_creation_task/ui/screens/root/root_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Register_screen_0 extends StatefulWidget {
  @override
  State<Register_screen_0> createState() => _Register_screen_0State();
}

class _Register_screen_0State extends State<Register_screen_0> {
  final _formKey = GlobalKey<FormState>();

  bool _isPasswordVisiable = false;
  bool _isConfirmPasswordVisiable = false;
  @override
  void initState() {
    super.initState();
  }

  void onClick() {
    _isPasswordVisiable = !_isPasswordVisiable;
  }

  // also use in how to login mean if user already login just find out him in database and login the account
  final _auth = FirebaseAuth.instance;
  final RegExp _emailRegex = RegExp(
    r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
  );
  // call it in register button if all textfiorm feild  are ok in setstate funtion
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: SizedBox(
                      height: 200,
                      width: 180,
                      child: Image.asset(
                        "$staticAssets/loginlogo.png",
                        fit: BoxFit.cover,
                      )),
                ),
                const SizedBox(height: 30),
                Text(
                  "Register",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: authFieldDecoration.copyWith(
                      hintText: "Name",
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  controller: emailController,
                  // onChanged: (value) {
                  //   emailController.text = value;
                  // },
                  decoration: authFieldDecoration.copyWith(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Enter your emial",
                      prefixIcon: Icon(Icons.alternate_email),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        // borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.black))),
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return "Plaes enter your email";
                    } else if (!_emailRegex.hasMatch(value)) {
                      return "Enter a valid email e.g abc@gmail.com";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 30),
                TextFormField(
                  obscureText: _isPasswordVisiable,
                  controller: passwordController,
                  // onChanged: (value) {
                  //   passwordController.text = value;
                  // },
                  decoration: authFieldDecoration.copyWith(
                    fillColor: Colors.white,
                    hintText: "Your Password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isPasswordVisiable = !_isPasswordVisiable;
                        });
                      },
                      child: Icon(_isPasswordVisiable
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                  ),
                  validator: (value) {
                    if (value!.trim().isEmpty) {
                      return "Plaes enter your Password";
                    } else if (value.trim().length < 7) {
                      return "Paassword is less than 7 character";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 360,
                      decoration: BoxDecoration(
                          color: const Color(0xfffe78377),
                          borderRadius: BorderRadius.circular(9)),
                      child: TextButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => RootScreen(),
                              ));
                              setState(() {
                                register();
                              });
                            }
                          },
                          child: const Center(
                              child: Text(
                            "Register",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ))),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Have Account ?",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                      TextButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginScreen_0(),
                              ));
                              setState(() {
                                register();
                              });
                            }
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                color: Color(0xfffef8377)),
                          ))
                    ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
