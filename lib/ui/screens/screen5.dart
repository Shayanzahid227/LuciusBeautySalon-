import 'package:figma_creation_task/core/constant/string.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class screen_5 extends StatelessWidget {
  const screen_5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.signal_cellular_alt),
          Icon(Icons.wifi),
          Icon(Icons.battery_3_bar_rounded),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    "Categories ",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search_rounded),
                    hintText: " Search Categories ",
                    hintStyle:
                        const TextStyle(fontSize: 20, color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0))),
              ),
              const SizedBox(height: 20),
              const Row(
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
              SizedBox(
                  height: 145,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(8),
                        height: 139,
                        width: 106,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: const Color(0xffffbf1ff),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Padding(padding: EdgeInsets.only(top: 0)),
                            const Align(
                              alignment: Alignment.topRight,
                              child: CircleAvatar(
                                radius: 16,
                                backgroundColor: Color(0xfff9d00de),
                                child: Text(
                                  "10",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            Image.asset(
                              "$staticAssets/Frame.png",
                              scale: 4.0,
                            ),
                            const Text(
                              "Food",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
