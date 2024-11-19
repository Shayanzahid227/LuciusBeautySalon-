import 'package:flutter/material.dart';

class test1 extends StatefulWidget {
  const test1({super.key});

  @override
  State<test1> createState() => _test1State();
}

class _test1State extends State<test1> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SingleChildScrollView(),
    );
  }
}
