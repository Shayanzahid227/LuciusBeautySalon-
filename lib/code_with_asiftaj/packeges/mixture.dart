import 'package:figma_creation_task/ui/screens/test/qqqq.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ImportantPackeges extends StatefulWidget {
  const ImportantPackeges({super.key});

  @override
  State<ImportantPackeges> createState() => _ImportantPackegesState();
}

class _ImportantPackegesState extends State<ImportantPackeges> {
  bool isSelected = false;
  @override
  void initState() {
    // TODO: implement initState
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
                    keyboardType: TextInputType.number,
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
                    GestureDetector(
                      onTap: () {},
                      child: Text(
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
                        "Verify",
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
