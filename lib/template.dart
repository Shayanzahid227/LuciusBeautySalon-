import 'package:figma_creation_task/ui/screens/Lucious/home%20screen/home_view_model.dart';
import 'package:figma_creation_task/ui/screens/root/root_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class template extends StatefulWidget {
  const template({super.key});

  @override
  State<template> createState() => _templateState();
}

class _templateState extends State<template> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewModel(),
      child: Consumer<RootViewModel>(
          builder: (context, model, child) => const Scaffold(
                body: Column(
                  children: [],
                ),
              )),
    );
  }
}
