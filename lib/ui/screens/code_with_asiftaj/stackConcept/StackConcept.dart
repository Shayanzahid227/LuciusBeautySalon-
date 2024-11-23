import 'package:figma_creation_task/core/constant/string.dart';
import 'package:flutter/material.dart';

class Stackconcept extends StatefulWidget {
  const Stackconcept({super.key});

  @override
  State<Stackconcept> createState() => _StackconceptState();
}

class _StackconceptState extends State<Stackconcept> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 27,
                itemBuilder: (BuildContext context, int index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image(image: AssetImage("$staticAssets/FB.png")),
                    ),
                    title: Text("Shayan zahid"),
                    subtitle: Text("App devolper"),
                    trailing: Text("3:56 pm"),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
