import 'package:flutter/material.dart';

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
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search_rounded),
                    hintText: " Search Categories ",
                    hintStyle:
                        const TextStyle(fontSize: 20, color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(height: 20),
              const Row(
                children: [
                  Text(
                    "Popular Categories ",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              ),
              Container(
                  height: 145,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [Container()],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
