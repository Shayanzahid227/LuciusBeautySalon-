import 'package:flutter/material.dart';

class LoginScreen_00000 extends StatefulWidget {
  const LoginScreen_00000({super.key});

  @override
  State<LoginScreen_00000> createState() => _LoginScreen_00000State();
}

class _LoginScreen_00000State extends State<LoginScreen_00000> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("login"),
          const SizedBox(
            height: 19,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "emial",
                hintStyle: const TextStyle(fontSize: 20),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.black))),
          ),
          const SizedBox(height: 19),
          Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(color: Colors.purple[200]),
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  "login",
                  style: TextStyle(),
                )),
          )
        ],
      ),
    );
  }
}
