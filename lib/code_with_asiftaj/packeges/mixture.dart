import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ImportantPackeges extends StatelessWidget {
  const ImportantPackeges({super.key});

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
                Text(
                  "Email Verifictaion",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Row(
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80.0),
                  child: PinCodeTextField(
                    cursorColor: Colors.orange,
                    showCursor: true,
                    appContext: context,
                    length: 5,
                    obscureText: true,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeColor: Colors.teal,
                      activeFillColor: Colors.purple[300],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    beforeTextPaste: (allow) {
                      return true;
                    },
                    animationDuration: Duration(
                      milliseconds: 500,
                    ),
                    onCompleted: (x) {
                      print("Compleated");
                    },
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("didn't recive code? "),
                    Text(
                      "RESEND",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
