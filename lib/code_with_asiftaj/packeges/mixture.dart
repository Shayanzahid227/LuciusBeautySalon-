import 'package:flutter/material.dart';

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
            child: Text(
                "we have send a pin code on your emails \n     please enter your pin code below"),
          ),
        ],
      ),
    );
  }
}
