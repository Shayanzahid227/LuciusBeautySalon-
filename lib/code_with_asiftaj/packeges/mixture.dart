import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';

class ImportantPackeges extends StatefulWidget {
  const ImportantPackeges({super.key});

  @override
  State<ImportantPackeges> createState() => _ImportantPackegesState();
}

class _ImportantPackegesState extends State<ImportantPackeges> {
  bool isSelected = false;
  @override
  void initState() {
    super.initState();
  }

  void onClick() {
    isSelected = !isSelected;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                // ////////////////////////////////////////////////////////
                // DefaultTextStyle(
                //   style: const TextStyle(fontSize: 20.0, color: Colors.amber),
                //   child: AnimatedTextKit(
                //     animatedTexts: [
                //       WavyAnimatedText('Hello World'),
                //       WavyAnimatedText('Look at the waves'),
                //     ],
                //     isRepeatingAnimation: true,
                //     onTap: () {
                //       print("Tap Event");
                //     },
                //   ),
                // ),
                //**************************   animated text     ***********************/

                DefaultTextStyle(
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                    child: AnimatedTextKit(
                      animatedTexts: [WavyAnimatedText("Email Verification")],
                      isRepeatingAnimation: true,
                      onTap: () {
                        print("Tap Event");
                      },
                    )),
                //******************************************************************* */
                // Text(
                //   "Email Verifictaion",
                //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                // ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Enter the code send to "),
                    Text(
                      "sshayanzahid227@gmail.com",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 80.0),
                //   child: PinCodeTextField(
                //     keyboardType: TextInputType.number,
                //     cursorColor: Colors.black,
                //     showCursor: true,
                //     appContext: context,
                //     length: 5,
                //     obscureText: true,
                //     animationType: AnimationType.fade,
                //     pinTheme: PinTheme(
                //       shape: PinCodeFieldShape.box,
                //       fieldHeight: 50,
                //       fieldWidth: 40,
                //       activeColor: Colors.teal,
                //       activeFillColor: Colors.purple[300],
                //       borderRadius: BorderRadius.circular(15),
                //     ),
                //     beforeTextPaste: (allow) {
                //       return true;
                //     },
                //     animationDuration: const Duration(
                //       milliseconds: 500,
                //     ),
                //     onCompleted: (x) {
                //       print("Compleated");
                //     },
                //   ),
                // ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("didn't recive code? "),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "RESEND",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    onClick();
                  },
                  child: Container(
                    height: 60.h,
                    width: 300,
                    child: Center(
                      child: Text(
                        isSelected ? "Verify" : "done",
                        style: TextStyle(
                            fontSize: 20,
                            color: isSelected ? Colors.white : Colors.black),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: isSelected
                            ? Colors.purple[200]
                            : Colors.green[300]),
                  ),
                ),
              ],
            ),
          ),
          // Container(
          //   height: 240,
          //   width: 200,
          //   decoration: BoxDecoration(
          //     color: Colors.purple[100],
          //   ),
          //   child: Column(
          //     children: [
          //       Image(image: AssetImage("$staticAssets/details2.png")),
          //       Text("aaaaa"),
          //       Text("hhhhh")
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
