import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class statfulButton extends StatefulWidget {
  const statfulButton({super.key});

  @override
  State<statfulButton> createState() => _statfulButtonState();
}

class _statfulButtonState extends State<statfulButton> {
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      onClick();
                    },
                    child: Container(
                      height: 80,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: isSelected ? Colors.red : Colors.blue),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Yes",
                            style: TextStyle(fontSize: 30),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      onClick();
                    },
                    child: Container(
                      height: 80,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: isSelected ? Colors.blue : Colors.red),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "No",
                            style: TextStyle(fontSize: 30),
                          )),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
 // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //   children: [
                      //     InkWell(
                      //       onTap: () {
                      //         onClick();
                      //       },
                      //       child: Container(
                      //         padding: const EdgeInsets.all(20),
                      //         decoration: BoxDecoration(
                      //             color: isSelect ? Colors.red : Colors.green,
                      //             borderRadius: BorderRadius.circular(20)),
                      //         child: const Text("Yes"),
                      //       ),
                      //     ),
                      //     GestureDetector(
                      //       onTap: () {
                      //         onClick();
                      //       },
                      //       child: Container(
                      //         padding: const EdgeInsets.all(20),
                      //         decoration: BoxDecoration(
                      //             color: isSelect ? Colors.green : Colors.red,
                      //             borderRadius: BorderRadius.circular(20)),
                      //         child: const Text("No"),
                      //       ),
                      //     ),
                      //   ],
                      // ),