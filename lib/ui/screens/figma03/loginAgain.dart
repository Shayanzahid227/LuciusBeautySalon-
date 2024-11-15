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
            SizedBox(height: 200),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Row(
                children: [
                  Text("Email", style: GoogleFonts.pacifico(fontSize: 16)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                    hintText: 'Your email ',
                    hintStyle: TextStyle(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 22),
              child: Row(
                children: [
                  Text("Password"),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Your Password ',
                    hintStyle: TextStyle(),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            const SizedBox(
              height: 29,
            ),
            Center(
              child: Row(children: [
                const Text("new user signup?"),
                TextButton(onPressed: () {}, child: Text("SignUp"))
              ]),
            )
          ],
        ),
      ),
    );
  }
}
