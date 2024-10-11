import 'package:figma_creation_task/core/constant/string.dart';
import 'package:flutter/material.dart';

class screen_2 extends StatelessWidget {
  const screen_2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: const [
            Icon(Icons.signal_cellular_alt),
            Icon(Icons.wifi),
            Icon(Icons.battery_5_bar_outlined),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 20)),
                    const Text(
                      " Categories ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      selectionColor: Colors.black,
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              hintText: " Search Categories ",
                              prefixIcon: const Icon(
                                Icons.search_sharp,
                                size: 20,
                              ),
                              hintStyle: const TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 7),
                          child: Row(
                            children: [
                              Text(
                                "Popular Categories ",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                  height: 139,
                                  width: 106,
                                  color: const Color(0xffffbf1ff),
                                  child: Center(
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const CircleAvatar(
                                            backgroundColor: Color(0xfff9f00d6),
                                          ),
                                          Image.asset(
                                            "assets/images/Frame.png",
                                            fit: BoxFit.cover,
                                          ),
                                          const Align(),
                                          const Text(
                                            "Food ",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400),
                                          )
                                        ]),
                                  )),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
