import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/ui/custom_widgets/line_with_text.dart';
import 'package:figma_creation_task/ui/custom_widgets/login_button.dart';
import 'package:figma_creation_task/ui/custom_widgets/social_button.dart';
import 'package:figma_creation_task/ui/screens/shahab/sigin_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class pra_login extends StatefulWidget {
  const pra_login({super.key});

  @override
  State<pra_login> createState() => _pra_loginState();
}

class _pra_loginState extends State<pra_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 200),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Row(
                children: [
                  Text("Email", style: GoogleFonts.pacifico(fontSize: 16)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                    // prefix: Icon(
                    //   Icons.lock,
                    //   color: Colors.black,
                    // ),
                    hintText: 'Your email ',
                    hintStyle: const TextStyle(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.black))),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 22),
              child: Row(
                children: [
                  Text("Password"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Your Password ',
                    hintStyle: const TextStyle(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.black))),
              ),
            ),
            const SizedBox(
              height: 29,
            ),
            const CustomTextField(
                hintText: "confirm your password", showVisibilityToggle: true),
            Container(
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: TextButton(
                    onPressed: () {},
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "login",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ))),
              ),
            ),
            CustomLoginButton(onPressed: () {}),
            Row(children: [
              const Padding(
                padding: EdgeInsets.only(left: 117.0),
                child: Text("new user signup?"),
              ),
              TextButton(onPressed: () {}, child: const Text("SignUp"))
            ]),
            const CustomLineWithText(text: "continue with"),
            Center(
              child: Row(
                children: [
                  socialIconButton(
                      onPressed: () {}, imagePath: "$staticAssets/FB.png"),
                  socialIconButton(
                      onPressed: () {}, imagePath: "$staticAssets/FB.png"),
                  socialIconButton(
                      onPressed: () {}, imagePath: "$staticAssets/FB.png")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
