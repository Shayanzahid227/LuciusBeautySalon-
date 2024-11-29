import 'dart:ffi';

import 'package:flutter/material.dart';

class buttonColorChanging_2 extends StatefulWidget {
  const buttonColorChanging_2({super.key});

  @override
  State<buttonColorChanging_2> createState() => _buttonColorChanging_2State();
}

class _buttonColorChanging_2State extends State<buttonColorChanging_2> {
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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                InkWell(
                  splashColor: Colors.black,
                  onTap: () {
                    // onClick();
                  },
                  child: Container(
                    height: 70,
                    width: 120,
                    decoration: BoxDecoration(
                        color: isSelected ? Colors.red : Colors.blue),
                    child: const Center(
                      child: Text(
                        "yes ",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // onClick();
                  },
                  child: Container(
                    height: 70,
                    width: 120,
                    decoration: BoxDecoration(
                        color: isSelected ? Colors.blue : Colors.red),
                    child: const Center(
                      child: Text(
                        "No",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
