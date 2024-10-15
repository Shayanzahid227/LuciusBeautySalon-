//import 'package:figma_creation_task/core/constant/string.dart';
import 'package:flutter/material.dart';

class screen_1 extends StatefulWidget {
  const screen_1({super.key});

  @override
  State<screen_1> createState() => _screen_1State();
}

class _screen_1State extends State<screen_1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xffff0f2f1),
        // app bar
        appBar: AppBar(
          actions: const [
            Icon(Icons.signal_cellular_alt),
            Icon(Icons.wifi),
            Icon(Icons.battery_5_bar_outlined),
          ],
        ),
        // ***************** body *****************

        body: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text("Categories",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Color(0xfff010247))),
                ],
              ),
              const SizedBox(height: 20),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 25)),
              Row(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        prefix: const Icon(
                          Icons.search_outlined,
                          size: 20,
                        ),
                        hintText: "  Search Categories",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintStyle: const TextStyle(color: Colors.black)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
