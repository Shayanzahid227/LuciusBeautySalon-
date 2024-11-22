import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/ui/custom_widgets/text_feild.dart';
import 'package:figma_creation_task/ui/screens/Lucious/home%20screen/1home_screen.dart';
import 'package:figma_creation_task/ui/screens/Lucious/authentication%20screen/login_screen.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Register_screen_0 extends StatelessWidget {
  const Register_screen_0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: const [
          Icon(Icons.signal_cellular_alt),
          Icon(Icons.wifi),
          Icon(Icons.battery_4_bar_rounded),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: SizedBox(
                    height: 200,
                    width: 180,
                    child: Image.asset(
                      "$staticAssets/loginlogo.png",
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            const SizedBox(height: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 23.0),
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(height: 20),
                const CustomTextField(
                  obscureText: false,
                  hintText: "name",
                  showVisibilityToggle: false,
                ),
                const SizedBox(height: 30),
                const CustomTextField(
                  obscureText: false,
                  hintText: "Email",
                  showVisibilityToggle: false,
                ),
                const SizedBox(height: 30),
                const CustomTextField(
                  obscureText: false,
                  hintText: "Email Adress",
                  showVisibilityToggle: false,
                ),
                const SizedBox(height: 30),
                const CustomTextField(
                  obscureText: true,
                  hintText: "Password",
                  showVisibilityToggle: false,
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 360,
                        decoration: BoxDecoration(
                            color: const Color(0xfffe78377),
                            borderRadius: BorderRadius.circular(9)),
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const home_screen_0(),
                              ));
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
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const login_screen_0(),
                            ));
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                color: Color(0xfffef8377)),
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
