import 'package:flutter/material.dart';

class screen_4 extends StatelessWidget {
  const screen_4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Categories",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
          ),
          actions: const [
            Icon(Icons.signal_cellular_alt),
            Icon(Icons.wifi),
            Icon(Icons.battery_5_bar_outlined)
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search_sharp,
                        size: 20,
                      ),
                      hintText: "Search Categories ",
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
