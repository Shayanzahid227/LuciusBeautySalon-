import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                padding:
                    const EdgeInsets.all(20), // Add padding to the container
                child: Column(
                  // Use a Column instead of Row
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align items to the start
                  children: [
                    const Text(
                      " Categories ",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                      selectionColor: Colors.black,
                    ),
                    const SizedBox(
                        height: 20), // Add space between text and TextField
                    TextField(
                      decoration: InputDecoration(
                        hintText: " Search Categories ",
                        prefixIcon: const Icon(
                          // Use prefixIcon instead of prefix
                          Icons.search_sharp,
                          size: 20,
                        ),
                        hintStyle: const TextStyle(color: Color(0xffff0f2f1)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
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
