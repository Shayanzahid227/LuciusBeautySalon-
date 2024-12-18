import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/ui/screens/Lucious/authentication%20screen/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen_0 extends StatefulWidget {
  const SplashScreen_0({super.key});

  @override
  State<SplashScreen_0> createState() => _SplashScreen_0State();
}

class _SplashScreen_0State extends State<SplashScreen_0> {
  init() async {
    await Future.delayed(const Duration(seconds: 2), () {
      // navigator and rout mean from one page to another
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => LoginScreen_0(),
      ));
    });
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 300),
                child: SizedBox(
                  height: 170,
                  width: 140,
                  child: Image.asset(
                    "$staticAssets/lucious.png",
                    fit: BoxFit.cover,
                  ),
                )),
            const SizedBox(height: 20),
            const Text("Lucious",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Colors.black)),
            const Text("B e a u t y  s a l o o n",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.black))
          ],
        ),
      ),
    ));
  }
}
